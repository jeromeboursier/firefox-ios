// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at http://mozilla.org/MPL/2.0/

import UIKit

public struct LightTheme: Theme {
    public var type: ThemeType = .light
    public var colors: ThemeColourPalette = LightColourPalette()

    public init() {}
}

private struct LightColourPalette: ThemeColourPalette {
    // MARK: - Layers
    var layer1: UIColor = FXColors.LightGrey10
    var layer2: UIColor = FXColors.White
    var layer3: UIColor = FXColors.LightGrey20
    var layer4: UIColor = FXColors.LightGrey30.withAlphaComponent(0.6)
    var layer5: UIColor = FXColors.White
    var layer5Hover: UIColor = FXColors.LightGrey20
    var layerScrim: UIColor = FXColors.DarkGrey30.withAlphaComponent(0.95)
    var layerGradient = Gradient(colors: [FXColors.Violet40, FXColors.Violet70])
    var layerGradientOverlay = Gradient(colors: [FXColors.DarkGrey40.withAlphaComponent(0),
                                                 FXColors.DarkGrey40.withAlphaComponent(0.4)])
    var layerAccentNonOpaque: UIColor = FXColors.Blue50.withAlphaComponent(0.3)
    var layerAccentPrivate: UIColor = FXColors.Purple60
    var layerAccentPrivateNonOpaque: UIColor = FXColors.Purple60.withAlphaComponent(0.1)
    var layerSepia: UIColor = FXColors.Orange05
    var layerHomepage = Gradient(colors: [
        FXColors.LightGrey10.withAlphaComponent(1),
        FXColors.LightGrey10.withAlphaComponent(1),
        FXColors.LightGrey10.withAlphaComponent(1)
    ])
    var layerInfo: UIColor = FXColors.Blue50.withAlphaComponent(0.44)
    var layerConfirmation: UIColor = FXColors.Green20
    var layerWarning: UIColor = FXColors.Yellow20
    var layerError: UIColor = FXColors.Red10
    var layerSearch: UIColor = FXColors.LightGrey30
    var layerGradientURL = Gradient(colors: [
        FXColors.LightGrey30.withAlphaComponent(0),
        FXColors.LightGrey30.withAlphaComponent(1)
    ])

    // MARK: - Ratings
    var layerRatingA: UIColor = FXColors.Green20
    var layerRatingASubdued: UIColor = FXColors.Green05.withAlphaComponent(0.7)
    var layerRatingB: UIColor = FXColors.Blue10
    var layerRatingBSubdued: UIColor = FXColors.Blue05.withAlphaComponent(0.4)
    var layerRatingC: UIColor = FXColors.Yellow20
    var layerRatingCSubdued: UIColor = FXColors.Yellow05.withAlphaComponent(0.7)
    var layerRatingD: UIColor = FXColors.Orange20
    var layerRatingDSubdued: UIColor = FXColors.Orange05.withAlphaComponent(0.7)
    var layerRatingF: UIColor = FXColors.Red30
    var layerRatingFSubdued: UIColor = FXColors.Red05.withAlphaComponent(0.6)

    // MARK: - Actions
    var actionPrimary: UIColor = FXColors.Blue50
    var actionPrimaryHover: UIColor = FXColors.Blue60
    var actionSecondary: UIColor = FXColors.LightGrey30
    var actionSecondaryHover: UIColor = FXColors.LightGrey40
    var formSurfaceOff: UIColor = FXColors.LightGrey30
    var formKnob: UIColor = FXColors.White
    var indicatorActive: UIColor = FXColors.LightGrey50
    var indicatorInactive: UIColor = FXColors.LightGrey30
    var actionConfirmation: UIColor = FXColors.Green60
    var actionWarning: UIColor = FXColors.Yellow60.withAlphaComponent(0.4)
    var actionError: UIColor = FXColors.Red30
    var actionInfo: UIColor = FXColors.Blue50
    var actionTabActive: UIColor = FXColors.Purple60
    var actionTabInactive: UIColor = FXColors.Ink50

    // MARK: - Text
    var textPrimary: UIColor = FXColors.DarkGrey90
    var textSecondary: UIColor = FXColors.DarkGrey05
    var textDisabled: UIColor = FXColors.DarkGrey90.withAlphaComponent(0.4)
    var textWarning: UIColor = FXColors.Red70
    var textAccent: UIColor = FXColors.Blue50
    var textOnDark: UIColor = FXColors.LightGrey05
    var textOnLight: UIColor = FXColors.DarkGrey90
    var textInverted: UIColor = FXColors.LightGrey05

    // MARK: - Icons
    var iconPrimary: UIColor = FXColors.DarkGrey90
    var iconSecondary: UIColor = FXColors.DarkGrey05
    var iconDisabled: UIColor = FXColors.DarkGrey90.withAlphaComponent(0.4)
    var iconAction: UIColor = FXColors.Blue50
    var iconOnColor: UIColor = FXColors.LightGrey05
    var iconWarning: UIColor = FXColors.Red70
    var iconSpinner: UIColor = FXColors.LightGrey80
    var iconAccentViolet: UIColor = FXColors.Violet60
    var iconAccentBlue: UIColor = FXColors.Blue60
    var iconAccentPink: UIColor = FXColors.Pink60
    var iconAccentGreen: UIColor = FXColors.Green60
    var iconAccentYellow: UIColor = FXColors.Yellow60
    var iconRatingNeutral: UIColor = FXColors.LightGrey40

    // MARK: - Border
    var borderPrimary: UIColor = FXColors.LightGrey30
    var borderAccent: UIColor = FXColors.Blue50
    var borderAccentNonOpaque: UIColor = FXColors.Blue50.withAlphaComponent(0.1)
    var borderAccentPrivate: UIColor = FXColors.Purple60
    var borderInverted: UIColor = FXColors.LightGrey05
    var borderToolbarDivider: UIColor = FXColors.LightGrey10

    // MARK: - Shadow
    var shadowDefault: UIColor = FXColors.DarkGrey40.withAlphaComponent(0.16)

    // MARK: - Qwant Onboarding
    var onboarding_palePink = UIColor(rgb: 0xffd6d7)
    var onboarding_paleBlue = UIColor(rgb: 0x99beff)
    var onboarding_paleGreen = UIColor(rgb: 0xb3e6cc)
    var onboarding_blackText = UIColor(rgb: 0x050506)
    var onboarding_whiteText = UIColor.white

    // MARK: - Qwant Default Browser
    var defaultBrowser_paleViolet = UIColor(rgb: 0xDED6FF)

    // MARK: - Qwant VIP
    var vip_background = UIColor.white
    var vip_sectionColor = UIColor(rgb: 0xf4f5f6)
    var vip_textColor = UIColor(rgb: 0x050506)
    var vip_subtextColor = UIColor(rgb: 0x676e79)
    var vip_greenText = UIColor(rgb: 0x297a52)
    var vip_redText = UIColor(rgb: 0xe00004)
    var vip_blackText = UIColor(rgb: 0x050506)
    var vip_horizontalLine = UIColor(rgb: 0xc8cbd0)
    var vip_switchAndButtonTint = UIColor(rgb: 0x0051e0)
    var vip_greenIcon = UIColor(rgb: 0x38a870)
    var vip_redIcon = UIColor(rgb: 0xff5c5f)
    var vip_grayIcon = UIColor(rgb: 0xa7acb4)

    // MARK: - Qwant Omnibar
    var omnibar_tableViewSeparator = UIColor(rgb: 0x3C3C43).withAlphaComponent(0.36)
    var omnibar_keyboardBackground = UIColor(rgb: 0xD2D4DA)
    var omnibar_blue = QwantColors.grey1100
    var omnibar_purple = UIColor(rgb: 0x7B5CFF)
    var omnibar_gray = UIColor(rgb: 0x8E8E93)
    func omnibar_tableViewBackground(_ isPrivate: Bool) -> UIColor {
        return !isPrivate ? UIColor(rgb: 0xF4F5F6) : UIColor(rgb: 0x140a3d)
    }
    func omnibar_tableViewCellPrimaryText(_ isPrivate: Bool) -> UIColor {
        return !isPrivate ? .black : .white
    }
    func omnibar_tableViewCellSecondaryText(_ isPrivate: Bool) -> UIColor {
        return !isPrivate ? UIColor(rgb: 0x636366) : .white
    }
    func omnibar_tableViewCellBackground(_ isPrivate: Bool) -> UIColor {
        return !isPrivate ? .white : UIColor(rgb: 0x1C0E58)
    }
    func omnibar_tableViewSelectedCellBackground(_ isPrivate: Bool) -> UIColor {
        return !isPrivate ? UIColor(rgb: 0xC7C7CC) : UIColor(rgb: 0x4D3195)
    }
    func omnibar_qwantLogo(_ isPrivate: Bool) -> UIColor {
        return !isPrivate ? QwantColors.grey1100 : omnibar_purple
    }
    func omnibar_qwantLogoTint(_ isPrivate: Bool) -> UIColor {
        return !isPrivate ? QwantColors.grey000 : QwantColors.grey1100
    }
    func omnibar_tintColor(_ isPrivate: Bool) -> UIColor {
        return !isPrivate ? omnibar_blue : omnibar_purple
    }
    func omnibar_highlightedTintColor(_ isPrivate: Bool) -> UIColor {
        omnibar_tintColor(isPrivate).withAlphaComponent(0.8)
    }
    func omnibar_borderColor(_ isPrivate: Bool) -> UIColor {
        return !isPrivate ? UIColor(rgba: 0x0c0c0d19) : omnibar_purple
    }
    func omnibar_urlBarBackground(_ isPrivate: Bool) -> UIColor {
        return !isPrivate ? .white : UIColor(rgb: 0x48484a)
    }
    func omnibar_urlBarText(_ isPrivate: Bool) -> UIColor {
        return !isPrivate ? UIColor(rgb: 0x2a2a2e) : UIColor(rgb: 0xf9f9fb)
    }
    func omnibar_gray(_ isPrivate: Bool) -> UIColor {
        return !isPrivate ?
        UIColor(red: 60.0/255.0, green: 60.0/255.0, blue: 67.0/255.0, alpha: 0.6) :
        UIColor(red: 235.0/255.0, green: 235.0/255.0, blue: 245.0/255.0, alpha: 0.6)
    }
}
