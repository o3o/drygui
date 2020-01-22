module drygui.core;

import raylib;

//----------------------------------------------------------------------------------
// Defines and Macros
//----------------------------------------------------------------------------------
enum NUM_CONTROLS = 16; // Number of standard controls
enum NUM_PROPS_DEFAULT = 16; // Number of standard properties
enum NUM_PROPS_EXTENDED = 8; // Number of extended properties

enum TEXTEDIT_CURSOR_BLINK_FRAMES = 20; // Text edit controls cursor blink timming
// Style property
struct GuiStyleProp
{
    ushort controlId;
    ushort propertyId;
    int propertyValue;
}

// Gui control state
enum GuiControlState
{
    GUI_STATE_NORMAL = 0,
    GUI_STATE_FOCUSED = 1,
    GUI_STATE_PRESSED = 2,
    GUI_STATE_DISABLED = 3
}

// Gui control text alignment
enum GuiTextAlignment
{
    GUI_TEXT_ALIGN_LEFT = 0,
    GUI_TEXT_ALIGN_CENTER = 1,
    GUI_TEXT_ALIGN_RIGHT = 2
}

// Gui controls
enum GuiControl
{
    DEFAULT = 0,
    LABEL = 1, // LABELBUTTON
    BUTTON = 2, // IMAGEBUTTON
    TOGGLE = 3, // TOGGLEGROUP
    SLIDER = 4, // SLIDERBAR
    PROGRESSBAR = 5,
    CHECKBOX = 6,
    COMBOBOX = 7,
    DROPDOWNBOX = 8,
    TEXTBOX = 9, // TEXTBOXMULTI
    VALUEBOX = 10,
    SPINNER = 11,
    LISTVIEW = 12,
    COLORPICKER = 13,
    SCROLLBAR = 14,
    STATUSBAR = 15
}

// Gui base properties for every control
enum GuiControlProperty
{
    BORDER_COLOR_NORMAL = 0,
    BASE_COLOR_NORMAL = 1,
    TEXT_COLOR_NORMAL = 2,
    BORDER_COLOR_FOCUSED = 3,
    BASE_COLOR_FOCUSED = 4,
    TEXT_COLOR_FOCUSED = 5,
    BORDER_COLOR_PRESSED = 6,
    BASE_COLOR_PRESSED = 7,
    TEXT_COLOR_PRESSED = 8,
    BORDER_COLOR_DISABLED = 9,
    BASE_COLOR_DISABLED = 10,
    TEXT_COLOR_DISABLED = 11,
    BORDER_WIDTH = 12,
    TEXT_PADDING = 13,
    TEXT_ALIGNMENT = 14,
    RESERVED = 15
}

// Gui extended properties depend on control
// NOTE: We reserve a fixed size of additional properties per control

// DEFAULT properties
enum GuiDefaultProperty
{
    TEXT_SIZE = 16,
    TEXT_SPACING = 17,
    LINE_COLOR = 18,
    BACKGROUND_COLOR = 19
}

// Label
//typedef enum { } GuiLabelProperty;

// Button
//typedef enum { } GuiButtonProperty;

// Toggle / ToggleGroup
enum GuiToggleProperty
{
    GROUP_PADDING = 16
}

// Slider / SliderBar
enum GuiSliderProperty
{
    SLIDER_WIDTH = 16,
    SLIDER_PADDING = 17
}

// ProgressBar
enum GuiProgressBarProperty
{
    PROGRESS_PADDING = 16
}

// CheckBox
enum GuiCheckBoxProperty
{
    CHECK_PADDING = 16
}

// ComboBox
enum GuiComboBoxProperty
{
    COMBO_BUTTON_WIDTH = 16,
    COMBO_BUTTON_PADDING = 17
}

// DropdownBox
enum GuiDropdownBoxProperty
{
    ARROW_PADDING = 16,
    DROPDOWN_ITEMS_PADDING = 17
}

// TextBox / TextBoxMulti / ValueBox / Spinner
enum GuiTextBoxProperty
{
    TEXT_INNER_PADDING = 16,
    TEXT_LINES_PADDING = 17,
    COLOR_SELECTED_FG = 18,
    COLOR_SELECTED_BG = 19
}

// Spinner
enum GuiSpinnerProperty
{
    SPIN_BUTTON_WIDTH = 16,
    SPIN_BUTTON_PADDING = 17
}

// ScrollBar
enum GuiScrollBarProperty
{
    ARROWS_SIZE = 16,
    ARROWS_VISIBLE = 17,
    SCROLL_SLIDER_PADDING = 18,
    SCROLL_SLIDER_SIZE = 19,
    SCROLL_PADDING = 20,
    SCROLL_SPEED = 21
}

// ScrollBar side
enum GuiScrollBarSide
{
    SCROLLBAR_LEFT_SIDE = 0,
    SCROLLBAR_RIGHT_SIDE = 1
}

// ListView
enum GuiListViewProperty
{
    LIST_ITEMS_HEIGHT = 16,
    LIST_ITEMS_PADDING = 17,
    SCROLLBAR_WIDTH = 18,
    SCROLLBAR_SIDE = 19
}

// ColorPicker
enum GuiColorPickerProperty
{
    COLOR_SELECTOR_SIZE = 16,
    HUEBAR_WIDTH = 17, // Right hue bar width
    HUEBAR_PADDING = 18, // Right hue bar separation from panel
    HUEBAR_SELECTOR_HEIGHT = 19, // Right hue bar selector height
    HUEBAR_SELECTOR_OVERFLOW = 20 // Right hue bar selector overflow
}

