if movetoroot { 
    navigationController?.popToRootViewController(animated: true)
} else {
    navigationController?.popViewController(animated: true)
}