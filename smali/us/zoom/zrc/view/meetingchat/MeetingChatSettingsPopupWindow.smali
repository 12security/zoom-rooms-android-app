.class Lus/zoom/zrc/view/meetingchat/MeetingChatSettingsPopupWindow;
.super Landroid/widget/PopupWindow;
.source "MeetingChatSettingsPopupWindow.java"


# instance fields
.field private confApp:Lus/zoom/zrcsdk/ConfApp;

.field private meetingChatMessageManager:Lus/zoom/zrc/model/MeetingChatMessageManager;

.field private propertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

.field private sShowChatPanelOnZR:Lus/zoom/zrc/base/widget/ZRCSwitchButton;

.field private sShowNotificationOnZR:Lus/zoom/zrc/base/widget/ZRCSwitchButton;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 41
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 26
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/ZRCSdk;->getConfApp()Lus/zoom/zrcsdk/ConfApp;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatSettingsPopupWindow;->confApp:Lus/zoom/zrcsdk/ConfApp;

    .line 27
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getMeetingChatMessageManager()Lus/zoom/zrc/model/MeetingChatMessageManager;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatSettingsPopupWindow;->meetingChatMessageManager:Lus/zoom/zrc/model/MeetingChatMessageManager;

    .line 29
    new-instance v0, Lus/zoom/zrc/view/meetingchat/MeetingChatSettingsPopupWindow$1;

    invoke-direct {v0, p0}, Lus/zoom/zrc/view/meetingchat/MeetingChatSettingsPopupWindow$1;-><init>(Lus/zoom/zrc/view/meetingchat/MeetingChatSettingsPopupWindow;)V

    iput-object v0, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatSettingsPopupWindow;->propertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$dimen;->meeting_chat_settings_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/meetingchat/MeetingChatSettingsPopupWindow;->setWidth(I)V

    const/4 v0, -0x2

    .line 43
    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/meetingchat/MeetingChatSettingsPopupWindow;->setHeight(I)V

    const/4 v0, 0x1

    .line 44
    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/meetingchat/MeetingChatSettingsPopupWindow;->setFocusable(Z)V

    .line 45
    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/meetingchat/MeetingChatSettingsPopupWindow;->setOutsideTouchable(Z)V

    .line 46
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/meetingchat/MeetingChatSettingsPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 49
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lus/zoom/zrcbox/R$layout;->popup_chat_settings:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 50
    new-instance v0, Lus/zoom/zrc/view/meetingchat/MeetingChatSettingsPopupWindow$2;

    invoke-direct {v0, p0}, Lus/zoom/zrc/view/meetingchat/MeetingChatSettingsPopupWindow$2;-><init>(Lus/zoom/zrc/view/meetingchat/MeetingChatSettingsPopupWindow;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 64
    sget v0, Lus/zoom/zrcbox/R$id;->switch_hide_notification:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    iput-object v0, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatSettingsPopupWindow;->sShowNotificationOnZR:Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    .line 65
    sget v0, Lus/zoom/zrcbox/R$id;->switch_show_full_chat_panel:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    iput-object v0, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatSettingsPopupWindow;->sShowChatPanelOnZR:Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    .line 67
    iget-object v0, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatSettingsPopupWindow;->sShowNotificationOnZR:Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    new-instance v1, Lus/zoom/zrc/view/meetingchat/MeetingChatSettingsPopupWindow$3;

    invoke-direct {v1, p0}, Lus/zoom/zrc/view/meetingchat/MeetingChatSettingsPopupWindow$3;-><init>(Lus/zoom/zrc/view/meetingchat/MeetingChatSettingsPopupWindow;)V

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/widget/ZRCSwitchButton;->setOnSwitchChangedListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 73
    iget-object v0, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatSettingsPopupWindow;->sShowChatPanelOnZR:Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    new-instance v1, Lus/zoom/zrc/view/meetingchat/MeetingChatSettingsPopupWindow$4;

    invoke-direct {v1, p0}, Lus/zoom/zrc/view/meetingchat/MeetingChatSettingsPopupWindow$4;-><init>(Lus/zoom/zrc/view/meetingchat/MeetingChatSettingsPopupWindow;)V

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/widget/ZRCSwitchButton;->setOnSwitchChangedListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 79
    invoke-virtual {p0, p1}, Lus/zoom/zrc/view/meetingchat/MeetingChatSettingsPopupWindow;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/view/meetingchat/MeetingChatSettingsPopupWindow;)Lus/zoom/zrc/model/MeetingChatMessageManager;
    .locals 0

    .line 23
    iget-object p0, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatSettingsPopupWindow;->meetingChatMessageManager:Lus/zoom/zrc/model/MeetingChatMessageManager;

    return-object p0
.end method

.method static synthetic access$100(Lus/zoom/zrc/view/meetingchat/MeetingChatSettingsPopupWindow;Z)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lus/zoom/zrc/view/meetingchat/MeetingChatSettingsPopupWindow;->updateShowNotificationOnZR(Z)V

    return-void
.end method

.method static synthetic access$200(Lus/zoom/zrc/view/meetingchat/MeetingChatSettingsPopupWindow;Z)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lus/zoom/zrc/view/meetingchat/MeetingChatSettingsPopupWindow;->updateShowChatPanelOnZR(Z)V

    return-void
.end method

.method static synthetic access$300(Lus/zoom/zrc/view/meetingchat/MeetingChatSettingsPopupWindow;)Landroidx/databinding/Observable$OnPropertyChangedCallback;
    .locals 0

    .line 23
    iget-object p0, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatSettingsPopupWindow;->propertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

    return-object p0
.end method

.method static synthetic access$400(Lus/zoom/zrc/view/meetingchat/MeetingChatSettingsPopupWindow;)Lus/zoom/zrcsdk/ConfApp;
    .locals 0

    .line 23
    iget-object p0, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatSettingsPopupWindow;->confApp:Lus/zoom/zrcsdk/ConfApp;

    return-object p0
.end method

.method private updateShowChatPanelOnZR(Z)V
    .locals 1

    .line 87
    iget-object v0, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatSettingsPopupWindow;->sShowChatPanelOnZR:Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/base/widget/ZRCSwitchButton;->setCheckedOnlyForUI(Z)V

    return-void
.end method

.method private updateShowNotificationOnZR(Z)V
    .locals 1

    .line 83
    iget-object v0, p0, Lus/zoom/zrc/view/meetingchat/MeetingChatSettingsPopupWindow;->sShowNotificationOnZR:Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/base/widget/ZRCSwitchButton;->setCheckedOnlyForUI(Z)V

    return-void
.end method
