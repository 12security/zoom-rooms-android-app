.class public Lus/zoom/zrc/login/LoginNetworkDisconnectFragment;
.super Lus/zoom/zrc/login/LoginBaseFragment;
.source "LoginNetworkDisconnectFragment.java"


# static fields
.field private static final LINK_CONFIGURATION_CHANGED_ACTION:Ljava/lang/String; = "android.net.ethernet.LINK_CONFIGURATION_CHANGED"

.field private static final NETWORK_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.ethernet.STATE_CHANGE"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mNetworkChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mReconnectTask:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Lus/zoom/zrc/login/LoginBaseFragment;-><init>()V

    .line 50
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/login/LoginNetworkDisconnectFragment;->mHandler:Landroid/os/Handler;

    .line 52
    new-instance v0, Lus/zoom/zrc/login/LoginNetworkDisconnectFragment$1;

    invoke-direct {v0, p0}, Lus/zoom/zrc/login/LoginNetworkDisconnectFragment$1;-><init>(Lus/zoom/zrc/login/LoginNetworkDisconnectFragment;)V

    iput-object v0, p0, Lus/zoom/zrc/login/LoginNetworkDisconnectFragment;->mNetworkChangedReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/login/LoginNetworkDisconnectFragment;Z)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lus/zoom/zrc/login/LoginNetworkDisconnectFragment;->retryConnect(Z)V

    return-void
.end method

.method static synthetic access$100(Lus/zoom/zrc/login/LoginNetworkDisconnectFragment;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lus/zoom/zrc/login/LoginNetworkDisconnectFragment;->launchSystemSettings()V

    return-void
.end method

.method static synthetic access$200(Lus/zoom/zrc/login/LoginNetworkDisconnectFragment;)Ljava/lang/Runnable;
    .locals 0

    .line 44
    iget-object p0, p0, Lus/zoom/zrc/login/LoginNetworkDisconnectFragment;->mReconnectTask:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$300(Lus/zoom/zrc/login/LoginNetworkDisconnectFragment;)Landroid/os/Handler;
    .locals 0

    .line 44
    iget-object p0, p0, Lus/zoom/zrc/login/LoginNetworkDisconnectFragment;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private buildDisconnectDescription(Landroid/widget/TextView;)V
    .locals 5

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lus/zoom/zrcbox/R$string;->connection_failure_no_network_message:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/login/LoginNetworkDisconnectFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "     "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 225
    sget v1, Lus/zoom/zrcbox/R$string;->retry:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/login/LoginNetworkDisconnectFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 226
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 227
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 228
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 230
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 231
    new-instance v0, Lus/zoom/zrc/login/LoginNetworkDisconnectFragment$4;

    invoke-direct {v0, p0}, Lus/zoom/zrc/login/LoginNetworkDisconnectFragment$4;-><init>(Lus/zoom/zrc/login/LoginNetworkDisconnectFragment;)V

    const/16 v4, 0x21

    invoke-virtual {v3, v0, v2, v1, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 246
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 247
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private isSupportSystemSettings()Z
    .locals 1

    .line 251
    invoke-static {}, Lus/zoom/zrc/utils/DeviceInfoUtils;->isRunInPolycomTrio()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    invoke-static {}, Lus/zoom/zrc/ZRCApplication;->getInstance()Lus/zoom/zrc/ZRCApplication;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/ZRCApplication;->isSupportsTrioSettings()Z

    move-result v0

    return v0

    .line 254
    :cond_0
    invoke-static {}, Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;->getInstance()Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;->supportsLaunchSystemSettings()Z

    move-result v0

    return v0
.end method

.method private launchSystemSettings()V
    .locals 2

    .line 116
    invoke-static {}, Lus/zoom/zrc/utils/DeviceInfoUtils;->isRunInPolycomTrio()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    .line 118
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "polycom://settings-menu"

    .line 119
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 120
    invoke-virtual {p0, v0}, Lus/zoom/zrc/login/LoginNetworkDisconnectFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 122
    :cond_0
    invoke-static {}, Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;->getInstance()Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;

    move-result-object v0

    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginNetworkDisconnectFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lus/zoom/zrc/vendoros/ZRCVendorOSHelper;->launchSystemSettings(Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method public static obtainInstance(Landroidx/fragment/app/FragmentManager;)Lus/zoom/zrc/login/LoginNetworkDisconnectFragment;
    .locals 1
    .param p0    # Landroidx/fragment/app/FragmentManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 67
    const-class v0, Lus/zoom/zrc/login/LoginNetworkDisconnectFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    check-cast p0, Lus/zoom/zrc/login/LoginNetworkDisconnectFragment;

    if-nez p0, :cond_0

    .line 69
    new-instance p0, Lus/zoom/zrc/login/LoginNetworkDisconnectFragment;

    invoke-direct {p0}, Lus/zoom/zrc/login/LoginNetworkDisconnectFragment;-><init>()V

    :cond_0
    return-object p0
.end method

.method private retryConnect(Z)V
    .locals 2

    .line 213
    invoke-direct {p0}, Lus/zoom/zrc/login/LoginNetworkDisconnectFragment;->stopReconnectTimer()V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 215
    invoke-static {}, Lus/zoom/zrc/login/LoginUsageTrack;->sendRetryConnect()V

    const-string v1, "User clicked retry connection..."

    .line 216
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string v1, "Retry connection by timer..."

    .line 218
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 220
    :goto_0
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginNetworkDisconnectFragment;->getPresenter()Lus/zoom/zrc/login/LoginContract$IPresenter;

    move-result-object v0

    invoke-interface {v0, p1}, Lus/zoom/zrc/login/LoginContract$IPresenter;->retryConnect(Z)V

    return-void
.end method

.method private startReconnectTimer()V
    .locals 4

    .line 186
    invoke-direct {p0}, Lus/zoom/zrc/login/LoginNetworkDisconnectFragment;->stopReconnectTimer()V

    .line 187
    new-instance v0, Lus/zoom/zrc/login/LoginNetworkDisconnectFragment$3;

    invoke-direct {v0, p0}, Lus/zoom/zrc/login/LoginNetworkDisconnectFragment$3;-><init>(Lus/zoom/zrc/login/LoginNetworkDisconnectFragment;)V

    iput-object v0, p0, Lus/zoom/zrc/login/LoginNetworkDisconnectFragment;->mReconnectTask:Ljava/lang/Runnable;

    .line 202
    iget-object v0, p0, Lus/zoom/zrc/login/LoginNetworkDisconnectFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lus/zoom/zrc/login/LoginNetworkDisconnectFragment;->mReconnectTask:Ljava/lang/Runnable;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private stopReconnectTimer()V
    .locals 2

    .line 206
    iget-object v0, p0, Lus/zoom/zrc/login/LoginNetworkDisconnectFragment;->mReconnectTask:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 207
    iget-object v1, p0, Lus/zoom/zrc/login/LoginNetworkDisconnectFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 208
    iput-object v0, p0, Lus/zoom/zrc/login/LoginNetworkDisconnectFragment;->mReconnectTask:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method private updateInformation(Landroid/view/View;)V
    .locals 7

    .line 162
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getLoginInfo()Lus/zoom/zrcsdk/model/LoginInfo;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 167
    :cond_0
    sget v1, Lus/zoom/zrcbox/R$id;->please_contact_it:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 169
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginNetworkDisconnectFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 171
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/LoginInfo;->getRoomSupportEmail()Ljava/lang/String;

    move-result-object v2

    .line 172
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/LoginInfo;->getRoomSupportPhone()Ljava/lang/String;

    move-result-object v0

    .line 173
    sget v3, Lus/zoom/zrcbox/R$string;->it_phone:I

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-virtual {v1, v3, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 174
    sget v5, Lus/zoom/zrcbox/R$string;->it_email:I

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v6

    invoke-virtual {v1, v5, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 175
    sget v4, Lus/zoom/zrcbox/R$string;->please_contact_it:I

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 176
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 178
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 180
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_0
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

    .line 77
    sget p3, Lus/zoom/zrcbox/R$layout;->cannot_connect_network:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onPause()V
    .locals 0

    .line 148
    invoke-super {p0}, Lus/zoom/zrc/login/LoginBaseFragment;->onPause()V

    .line 149
    invoke-direct {p0}, Lus/zoom/zrc/login/LoginNetworkDisconnectFragment;->stopReconnectTimer()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 142
    invoke-super {p0}, Lus/zoom/zrc/login/LoginBaseFragment;->onResume()V

    .line 143
    invoke-direct {p0}, Lus/zoom/zrc/login/LoginNetworkDisconnectFragment;->startReconnectTimer()V

    return-void
.end method

.method public onStart()V
    .locals 3

    .line 128
    invoke-super {p0}, Lus/zoom/zrc/login/LoginBaseFragment;->onStart()V

    .line 129
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginNetworkDisconnectFragment;->getNavigator()Lus/zoom/zrc/login/LoginContract$INavigator;

    move-result-object v0

    invoke-interface {v0}, Lus/zoom/zrc/login/LoginContract$INavigator;->hideActionBar()V

    .line 130
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginNetworkDisconnectFragment;->getNavigator()Lus/zoom/zrc/login/LoginContract$INavigator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lus/zoom/zrc/login/LoginContract$INavigator;->setShowFooter(Z)V

    .line 131
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginNetworkDisconnectFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lus/zoom/zrc/login/LoginNetworkDisconnectFragment;->updateInformation(Landroid/view/View;)V

    .line 133
    invoke-static {}, Lus/zoom/zrc/utils/DeviceInfoUtils;->hasEthernet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.ethernet.STATE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.net.ethernet.LINK_CONFIGURATION_CHANGED"

    .line 135
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginNetworkDisconnectFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lus/zoom/zrc/login/LoginNetworkDisconnectFragment;->mNetworkChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroidx/fragment/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 154
    invoke-super {p0}, Lus/zoom/zrc/login/LoginBaseFragment;->onStop()V

    .line 156
    invoke-static {}, Lus/zoom/zrc/utils/DeviceInfoUtils;->hasEthernet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {p0}, Lus/zoom/zrc/login/LoginNetworkDisconnectFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/login/LoginNetworkDisconnectFragment;->mNetworkChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

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

    .line 82
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/login/LoginBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 83
    sget p2, Lus/zoom/zrcbox/R$id;->content_des:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 84
    sget v0, Lus/zoom/zrcbox/R$id;->system_settings:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 85
    invoke-static {}, Lus/zoom/zrc/utils/DeviceInfoUtils;->isRunInPolycomTrio()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    sget v0, Lus/zoom/zrcbox/R$string;->trio_settings:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 88
    :cond_0
    sget v0, Lus/zoom/zrcbox/R$string;->system_settings:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 90
    :goto_0
    invoke-direct {p0}, Lus/zoom/zrc/login/LoginNetworkDisconnectFragment;->isSupportSystemSettings()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 91
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_1
    const/16 v0, 0x8

    .line 93
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 95
    :goto_1
    new-instance v0, Lus/zoom/zrc/login/LoginNetworkDisconnectFragment$2;

    invoke-direct {v0, p0, p1}, Lus/zoom/zrc/login/LoginNetworkDisconnectFragment$2;-><init>(Lus/zoom/zrc/login/LoginNetworkDisconnectFragment;Landroid/widget/TextView;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    invoke-direct {p0, p2}, Lus/zoom/zrc/login/LoginNetworkDisconnectFragment;->buildDisconnectDescription(Landroid/widget/TextView;)V

    return-void
.end method
