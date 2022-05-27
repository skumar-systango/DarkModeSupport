//
//  SettingsViewController.swift
//  NewDemoDarkMode
//
//  Created by Sunil Kumar on 26/05/22.
//

import UIKit

class SettingsViewController: UITableViewController {

    var defaults = UserDefaults.standard
    private var theme: Theme {
        get {
            return defaults.myTheme
        }
        set {
            defaults.myTheme = newValue
            configureStyle(for: newValue)
        }
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        configureCell(for: theme, checked: true)
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        configureCell(for: theme, checked: false)
        theme = Theme(rawValue: indexPath.row) ?? .device
        configureCell(for: theme, checked: true)
        tableView.deselectRow(at: indexPath, animated: true)
    }

    private func configureCell(for theme: Theme, checked: Bool) {
        let cell = tableView.cellForRow(at: IndexPath(row: theme.rawValue, section: 0))
        cell?.accessoryType = checked ? .checkmark : .none
    }

    private func configureStyle(for theme: Theme) {
        view.window?.overrideUserInterfaceStyle = theme.userInterfaceStyle
    }
  

}
