.class Lus/zoom/zrc/settings/MicrophoneWarningDialog$1;
.super Lus/zoom/zrc/base/app/ZRCUIElementsManager$ZRCUIElementListenerAdapter;
.source "MicrophoneWarningDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/settings/MicrophoneWarningDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/settings/MicrophoneWarningDialog;


# direct methods
.method constructor <init>(Lus/zoom/zrc/settings/MicrophoneWarningDialog;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lus/zoom/zrc/settings/MicrophoneWarningDialog$1;->this$0:Lus/zoom/zrc/settings/MicrophoneWarningDialog;

    invoke-direct {p0}, Lus/zoom/zrc/base/app/ZRCUIElementsManager$ZRCUIElementListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onUIMoveToForeground(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 54
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/base/app/ZRCUIElementsManager$ZRCUIElementListenerAdapter;->onUIMoveToForeground(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    .line 55
    invoke-static {p1}, Lus/zoom/zrc/base/app/ZRCUIElementsManager;->isIncomingCallActivity(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lus/zoom/zrc/base/app/ZRCUIElementsManager;->isWaitingDialog(Landroidx/fragment/app/Fragment;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lus/zoom/zrc/settings/MicrophoneWarningDialog$1;->this$0:Lus/zoom/zrc/settings/MicrophoneWarningDialog;

    .line 56
    invoke-static {p1, p2, v0}, Lus/zoom/zrc/base/app/ZRCUIElementsManager;->isForegroundFragment(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 57
    iget-object p1, p0, Lus/zoom/zrc/settings/MicrophoneWarningDialog$1;->this$0:Lus/zoom/zrc/settings/MicrophoneWarningDialog;

    invoke-virtual {p1}, Lus/zoom/zrc/settings/MicrophoneWarningDialog;->getNonNullEventTaskManagerOrThrowException()Lus/zoom/androidlib/util/EventTaskManager;

    move-result-object p1

    new-instance p2, Lus/zoom/zrc/settings/MicrophoneWarningDialog$1$1;

    const-string v0, "onUIMoveToForeground"

    invoke-direct {p2, p0, v0}, Lus/zoom/zrc/settings/MicrophoneWarningDialog$1$1;-><init>(Lus/zoom/zrc/settings/MicrophoneWarningDialog$1;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lus/zoom/androidlib/util/EventTaskManager;->push(Lus/zoom/androidlib/util/EventAction;)V

    :cond_0
    return-void
.end method
