.class public Lus/zoom/zrc/login/room/LoginAddNewCalendarFragment;
.super Lus/zoom/zrc/login/LoginBaseFragment;
.source "LoginAddNewCalendarFragment.java"


# instance fields
.field private mAlertDialog:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lus/zoom/zrc/login/LoginBaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/login/room/LoginAddNewCalendarFragment;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lus/zoom/zrc/login/room/LoginAddNewCalendarFragment;->onGoogleClicked()V

    return-void
.end method

.method static synthetic access$100(Lus/zoom/zrc/login/room/LoginAddNewCalendarFragment;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lus/zoom/zrc/login/room/LoginAddNewCalendarFragment;->onMicrosoftClicked()V

    return-void
.end method

.method static synthetic access$200(Lus/zoom/zrc/login/room/LoginAddNewCalendarFragment;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lus/zoom/zrc/login/room/LoginAddNewCalendarFragment;->onSkipButtonClicked()V

    return-void
.end method

.method static synthetic access$300(Lus/zoom/zrc/login/room/LoginAddNewCalendarFragment;)Lus/zoom/zrc/login/LoginContract$IPresenter;
    .locals 0

    .line 39
    invoke-virtual {p0}, Lus/zoom/zrc/login/room/LoginAddNewCalendarFragment;->getPresenter()Lus/zoom/zrc/login/LoginContract$IPresenter;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lus/zoom/zrc/login/room/LoginAddNewCalendarFragment;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lus/zoom/zrc/login/room/LoginAddNewCalendarFragment;->onZoomHelpCenterClicked()V

    return-void
.end method

.method public static obtainInstance(Landroidx/fragment/app/FragmentManager;)Lus/zoom/zrc/login/room/LoginAddNewCalendarFragment;
    .locals 1
    .param p0    # Landroidx/fragment/app/FragmentManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 44
    const-class v0, Lus/zoom/zrc/login/room/LoginAddNewCalendarFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    check-cast p0, Lus/zoom/zrc/login/room/LoginAddNewCalendarFragment;

    if-nez p0, :cond_0

    .line 46
    new-instance p0, Lus/zoom/zrc/login/room/LoginAddNewCalendarFragment;

    invoke-direct {p0}, Lus/zoom/zrc/login/room/LoginAddNewCalendarFragment;-><init>()V

    :cond_0
    return-object p0
.end method

.method private onGoogleClicked()V
    .locals 4

    .line 126
    invoke-static {}, Lus/zoom/zrc/login/LoginUsageTrack;->sendAddCalendarClickGoogle()V

    .line 127
    invoke-virtual {p0}, Lus/zoom/zrc/login/room/LoginAddNewCalendarFragment;->getPresenter()Lus/zoom/zrc/login/LoginContract$IPresenter;

    move-result-object v0

    invoke-interface {v0}, Lus/zoom/zrc/login/LoginContract$IPresenter;->generateAddCalendarUrl()Ljava/lang/String;

    move-result-object v0

    .line 128
    invoke-virtual {p0}, Lus/zoom/zrc/login/room/LoginAddNewCalendarFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    invoke-direct {v2}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;-><init>()V

    invoke-virtual {v2}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->build()Landroidx/browser/customtabs/CustomTabsIntent;

    move-result-object v2

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v3, Lus/zoom/zrc/login/room/LoginAddNewCalendarFragment$5;

    invoke-direct {v3, p0}, Lus/zoom/zrc/login/room/LoginAddNewCalendarFragment$5;-><init>(Lus/zoom/zrc/login/room/LoginAddNewCalendarFragment;)V

    invoke-static {v1, v2, v0, v3}, Landroidx/browser/customtabs/CustomTabActivityHelper;->openCustomTab(Landroid/app/Activity;Landroidx/browser/customtabs/CustomTabsIntent;Landroid/net/Uri;Landroidx/browser/customtabs/CustomTabActivityHelper$CustomTabFallback;)V

    return-void
.end method

.method private onMicrosoftClicked()V
    .locals 3

    .line 139
    invoke-static {}, Lus/zoom/zrc/login/LoginUsageTrack;->sendAddCalendarClickMicrosoft()V

    .line 140
    iget-object v0, p0, Lus/zoom/zrc/login/room/LoginAddNewCalendarFragment;->mAlertDialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 141
    invoke-virtual {p0}, Lus/zoom/zrc/login/room/LoginAddNewCalendarFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$layout;->login_dialog_help_text:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 142
    invoke-direct {p0, v0}, Lus/zoom/zrc/login/room/LoginAddNewCalendarFragment;->setupMicrosoftHelpView(Landroid/widget/TextView;)V

    .line 143
    new-instance v1, Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;

    invoke-virtual {p0}, Lus/zoom/zrc/login/room/LoginAddNewCalendarFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 144
    sget v2, Lus/zoom/zrcbox/R$style;->ZRCLoginDialog_Transparent:I

    invoke-virtual {v1, v2}, Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;->setTheme(I)Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;

    .line 145
    invoke-virtual {v1, v0}, Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;->setView(Landroid/view/View;)Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;

    .line 146
    invoke-virtual {v1}, Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;->create()Lus/zoom/androidlib/widget/ZMAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/login/room/LoginAddNewCalendarFragment;->mAlertDialog:Landroid/app/Dialog;

    .line 148
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/login/room/LoginAddNewCalendarFragment;->mAlertDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private onSkipButtonClicked()V
    .locals 2

    .line 118
    invoke-virtual {p0}, Lus/zoom/zrc/login/room/LoginAddNewCalendarFragment;->getPresenter()Lus/zoom/zrc/login/LoginContract$IPresenter;

    move-result-object v0

    invoke-interface {v0}, Lus/zoom/zrc/login/LoginContract$IPresenter;->getLocationHelper()Lus/zoom/zrc/login/LoginLocationHelper;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/login/LoginLocationHelper;->hasLocationToDisplay()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {p0}, Lus/zoom/zrc/login/room/LoginAddNewCalendarFragment;->getNavigator()Lus/zoom/zrc/login/LoginContract$INavigator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lus/zoom/zrc/login/LoginContract$INavigator;->onShowLocationPicker(Lus/zoom/zrcsdk/model/ZRCLocationTree;)V

    goto :goto_0

    .line 121
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/login/room/LoginAddNewCalendarFragment;->getNavigator()Lus/zoom/zrc/login/LoginContract$INavigator;

    move-result-object v0

    invoke-interface {v0}, Lus/zoom/zrc/login/LoginContract$INavigator;->onSetRoomPassCode()V

    :goto_0
    return-void
.end method

.method private onZoomHelpCenterClicked()V
    .locals 4

    .line 179
    iget-object v0, p0, Lus/zoom/zrc/login/room/LoginAddNewCalendarFragment;->mAlertDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const-string v0, "https://support.zoom.us/hc/en-us/sections/200305533-Setup-Configuration"

    .line 181
    invoke-virtual {p0}, Lus/zoom/zrc/login/room/LoginAddNewCalendarFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    invoke-direct {v2}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;-><init>()V

    invoke-virtual {v2}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->build()Landroidx/browser/customtabs/CustomTabsIntent;

    move-result-object v2

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v3, Lus/zoom/zrc/login/room/LoginAddNewCalendarFragment$7;

    invoke-direct {v3, p0}, Lus/zoom/zrc/login/room/LoginAddNewCalendarFragment$7;-><init>(Lus/zoom/zrc/login/room/LoginAddNewCalendarFragment;)V

    invoke-static {v1, v2, v0, v3}, Landroidx/browser/customtabs/CustomTabActivityHelper;->openCustomTab(Landroid/app/Activity;Landroidx/browser/customtabs/CustomTabsIntent;Landroid/net/Uri;Landroidx/browser/customtabs/CustomTabActivityHelper$CustomTabFallback;)V

    return-void
.end method

.method private setupMicrosoftHelpView(Landroid/widget/TextView;)V
    .locals 5

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrcsdk/ZRCSdk;->currentDomain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/calendar"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 153
    sget v1, Lus/zoom/zrcbox/R$string;->zoom_help_center:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/login/room/LoginAddNewCalendarFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 154
    sget v2, Lus/zoom/zrcbox/R$string;->configure_microsoft_calendar_instruction:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    invoke-virtual {p0, v2, v3}, Lus/zoom/zrc/login/room/LoginAddNewCalendarFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 156
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 157
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v2

    .line 159
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 160
    new-instance v0, Lus/zoom/zrc/login/room/LoginAddNewCalendarFragment$6;

    invoke-direct {v0, p0}, Lus/zoom/zrc/login/room/LoginAddNewCalendarFragment$6;-><init>(Lus/zoom/zrc/login/room/LoginAddNewCalendarFragment;)V

    const/16 v4, 0x21

    invoke-virtual {v3, v0, v2, v1, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 174
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 175
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 54
    sget p3, Lus/zoom/zrcbox/R$layout;->login_fragment_add_new_calendar:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onStart()V
    .locals 3

    .line 91
    invoke-super {p0}, Lus/zoom/zrc/login/LoginBaseFragment;->onStart()V

    .line 92
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getCalendarServiceList()Ljava/util/List;

    move-result-object v0

    .line 93
    invoke-virtual {p0}, Lus/zoom/zrc/login/room/LoginAddNewCalendarFragment;->getNavigator()Lus/zoom/zrc/login/LoginContract$INavigator;

    move-result-object v1

    invoke-interface {v1}, Lus/zoom/zrc/login/LoginContract$INavigator;->showActionBar()Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 94
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 97
    :cond_0
    sget v0, Lus/zoom/zrcbox/R$string;->calendar_resource:I

    invoke-virtual {v1, v0}, Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;->setBackNavigation(I)Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;

    goto :goto_1

    .line 95
    :cond_1
    :goto_0
    sget v0, Lus/zoom/zrcbox/R$string;->room_name:I

    invoke-virtual {v1, v0}, Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;->setBackNavigation(I)Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;

    .line 99
    :goto_1
    sget v0, Lus/zoom/zrcbox/R$string;->sign_out:I

    new-instance v2, Lus/zoom/zrc/login/room/LoginAddNewCalendarFragment$4;

    invoke-direct {v2, p0}, Lus/zoom/zrc/login/room/LoginAddNewCalendarFragment$4;-><init>(Lus/zoom/zrc/login/room/LoginAddNewCalendarFragment;)V

    invoke-virtual {v1, v0, v2}, Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;->setRightAction(ILjava/lang/Runnable;)Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;

    .line 106
    invoke-virtual {v1}, Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;->show()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 111
    invoke-super {p0}, Lus/zoom/zrc/login/LoginBaseFragment;->onStop()V

    .line 112
    iget-object v0, p0, Lus/zoom/zrc/login/room/LoginAddNewCalendarFragment;->mAlertDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lus/zoom/zrc/login/room/LoginAddNewCalendarFragment;->mAlertDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 59
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/login/LoginBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 60
    sget p2, Lus/zoom/zrcbox/R$id;->button_google:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 61
    new-instance v0, Lus/zoom/zrc/login/room/LoginAddNewCalendarFragment$1;

    invoke-direct {v0, p0}, Lus/zoom/zrc/login/room/LoginAddNewCalendarFragment$1;-><init>(Lus/zoom/zrc/login/room/LoginAddNewCalendarFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    sget p2, Lus/zoom/zrcbox/R$id;->button_microsoft:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 69
    new-instance v0, Lus/zoom/zrc/login/room/LoginAddNewCalendarFragment$2;

    invoke-direct {v0, p0}, Lus/zoom/zrc/login/room/LoginAddNewCalendarFragment$2;-><init>(Lus/zoom/zrc/login/room/LoginAddNewCalendarFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    sget p2, Lus/zoom/zrcbox/R$id;->skip_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 77
    new-instance v0, Lus/zoom/zrc/login/room/LoginAddNewCalendarFragment$3;

    invoke-direct {v0, p0}, Lus/zoom/zrc/login/room/LoginAddNewCalendarFragment$3;-><init>(Lus/zoom/zrc/login/room/LoginAddNewCalendarFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    sget p2, Lus/zoom/zrcbox/R$id;->button_google_date:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 85
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    const/4 v0, 0x5

    .line 86
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
