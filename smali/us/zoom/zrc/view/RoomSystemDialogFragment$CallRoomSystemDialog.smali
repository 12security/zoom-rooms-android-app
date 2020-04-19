.class Lus/zoom/zrc/view/RoomSystemDialogFragment$CallRoomSystemDialog;
.super Lus/zoom/zrc/base/app/ZRCDialog;
.source "RoomSystemDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/view/RoomSystemDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallRoomSystemDialog"
.end annotation


# instance fields
.field private callRoomSystemView:Lus/zoom/zrc/view/CallRoomSystemView;

.field private propertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

.field final synthetic this$0:Lus/zoom/zrc/view/RoomSystemDialogFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/RoomSystemDialogFragment;Landroid/content/Context;)V
    .locals 0
    .param p1    # Lus/zoom/zrc/view/RoomSystemDialogFragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 43
    iput-object p1, p0, Lus/zoom/zrc/view/RoomSystemDialogFragment$CallRoomSystemDialog;->this$0:Lus/zoom/zrc/view/RoomSystemDialogFragment;

    .line 44
    sget p1, Lus/zoom/zrcbox/R$style;->ZRCTheme_CallRoomSystem_Light:I

    invoke-direct {p0, p2, p1}, Lus/zoom/zrc/base/app/ZRCDialog;-><init>(Landroid/content/Context;I)V

    .line 33
    new-instance p1, Lus/zoom/zrc/view/RoomSystemDialogFragment$CallRoomSystemDialog$1;

    invoke-direct {p1, p0}, Lus/zoom/zrc/view/RoomSystemDialogFragment$CallRoomSystemDialog$1;-><init>(Lus/zoom/zrc/view/RoomSystemDialogFragment$CallRoomSystemDialog;)V

    iput-object p1, p0, Lus/zoom/zrc/view/RoomSystemDialogFragment$CallRoomSystemDialog;->propertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/view/RoomSystemDialogFragment$CallRoomSystemDialog;Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lus/zoom/zrc/view/RoomSystemDialogFragment$CallRoomSystemDialog;->updateUI(Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;)V

    return-void
.end method

.method static synthetic access$100(Lus/zoom/zrc/view/RoomSystemDialogFragment$CallRoomSystemDialog;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lus/zoom/zrc/view/RoomSystemDialogFragment$CallRoomSystemDialog;->close()V

    return-void
.end method

.method static synthetic access$200(Lus/zoom/zrc/view/RoomSystemDialogFragment$CallRoomSystemDialog;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lus/zoom/zrc/view/RoomSystemDialogFragment$CallRoomSystemDialog;->disconnect()V

    return-void
.end method

.method private close()V
    .locals 2

    .line 119
    invoke-static {}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->getDefault()Lus/zoom/zrc/model/RoomSystemDialSessionHelper;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->getSessionStatus()Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->getStatus()I

    move-result v0

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 126
    :cond_0
    invoke-direct {p0}, Lus/zoom/zrc/view/RoomSystemDialogFragment$CallRoomSystemDialog;->disconnect()V

    goto :goto_1

    .line 122
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lus/zoom/zrc/view/RoomSystemDialogFragment$CallRoomSystemDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/view/RoomSystemDialogFragment$CallRoomSystemDialog;->callRoomSystemView:Lus/zoom/zrc/view/CallRoomSystemView;

    invoke-static {v0, v1}, Lus/zoom/androidlib/util/UIUtil;->closeSoftKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 123
    invoke-virtual {p0}, Lus/zoom/zrc/view/RoomSystemDialogFragment$CallRoomSystemDialog;->dismiss()V

    .line 124
    invoke-static {}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->getDefault()Lus/zoom/zrc/model/RoomSystemDialSessionHelper;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->forceEndRoomSystemUISession()V

    :goto_1
    return-void
.end method

.method private disconnect()V
    .locals 2

    .line 131
    invoke-virtual {p0}, Lus/zoom/zrc/view/RoomSystemDialogFragment$CallRoomSystemDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/view/RoomSystemDialogFragment$CallRoomSystemDialog;->callRoomSystemView:Lus/zoom/zrc/view/CallRoomSystemView;

    invoke-static {v0, v1}, Lus/zoom/androidlib/util/UIUtil;->closeSoftKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 132
    iget-object v0, p0, Lus/zoom/zrc/view/RoomSystemDialogFragment$CallRoomSystemDialog;->this$0:Lus/zoom/zrc/view/RoomSystemDialogFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/view/RoomSystemDialogFragment;->showWaitingDialog()V

    .line 133
    invoke-static {}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->getDefault()Lus/zoom/zrc/model/RoomSystemDialSessionHelper;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->endRoomSystem()V

    return-void
.end method

.method private updateUI(Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;)V
    .locals 1

    .line 137
    iget-object v0, p0, Lus/zoom/zrc/view/RoomSystemDialogFragment$CallRoomSystemDialog;->callRoomSystemView:Lus/zoom/zrc/view/CallRoomSystemView;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/view/CallRoomSystemView;->updateUI(Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;)V

    .line 139
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;->getStatus()I

    move-result p1

    const/16 v0, 0x2711

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 141
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/view/RoomSystemDialogFragment$CallRoomSystemDialog;->dismiss()V

    :goto_0
    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 2

    .line 102
    invoke-super {p0}, Lus/zoom/zrc/base/app/ZRCDialog;->onAttachedToWindow()V

    .line 103
    invoke-static {}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->getDefault()Lus/zoom/zrc/model/RoomSystemDialSessionHelper;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/RoomSystemDialSessionHelper;->getSessionStatus()Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;

    move-result-object v0

    invoke-direct {p0, v0}, Lus/zoom/zrc/view/RoomSystemDialogFragment$CallRoomSystemDialog;->updateUI(Lus/zoom/zrcsdk/model/RoomSystemDialSessionStatus;)V

    .line 104
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/view/RoomSystemDialogFragment$CallRoomSystemDialog;->propertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/Model;->addOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 49
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCDialog;->onCreate(Landroid/os/Bundle;)V

    .line 50
    new-instance p1, Lus/zoom/zrc/view/CallRoomSystemPreMeetingView;

    invoke-virtual {p0}, Lus/zoom/zrc/view/RoomSystemDialogFragment$CallRoomSystemDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lus/zoom/zrc/view/CallRoomSystemPreMeetingView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lus/zoom/zrc/view/RoomSystemDialogFragment$CallRoomSystemDialog;->callRoomSystemView:Lus/zoom/zrc/view/CallRoomSystemView;

    .line 51
    iget-object p1, p0, Lus/zoom/zrc/view/RoomSystemDialogFragment$CallRoomSystemDialog;->callRoomSystemView:Lus/zoom/zrc/view/CallRoomSystemView;

    invoke-virtual {p0, p1}, Lus/zoom/zrc/view/RoomSystemDialogFragment$CallRoomSystemDialog;->setContentView(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 52
    invoke-virtual {p0, p1}, Lus/zoom/zrc/view/RoomSystemDialogFragment$CallRoomSystemDialog;->setCancelable(Z)V

    .line 54
    iget-object p1, p0, Lus/zoom/zrc/view/RoomSystemDialogFragment$CallRoomSystemDialog;->callRoomSystemView:Lus/zoom/zrc/view/CallRoomSystemView;

    new-instance v0, Lus/zoom/zrc/view/RoomSystemDialogFragment$CallRoomSystemDialog$2;

    invoke-direct {v0, p0}, Lus/zoom/zrc/view/RoomSystemDialogFragment$CallRoomSystemDialog$2;-><init>(Lus/zoom/zrc/view/RoomSystemDialogFragment$CallRoomSystemDialog;)V

    invoke-virtual {p1, v0}, Lus/zoom/zrc/view/CallRoomSystemView;->setListener(Lus/zoom/zrc/view/CallRoomSystemViewListener;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 109
    invoke-virtual {p0}, Lus/zoom/zrc/view/RoomSystemDialogFragment$CallRoomSystemDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/view/RoomSystemDialogFragment$CallRoomSystemDialog;->callRoomSystemView:Lus/zoom/zrc/view/CallRoomSystemView;

    invoke-static {v0, v1}, Lus/zoom/androidlib/util/UIUtil;->closeSoftKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 110
    invoke-super {p0}, Lus/zoom/zrc/base/app/ZRCDialog;->onDetachedFromWindow()V

    .line 111
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/view/RoomSystemDialogFragment$CallRoomSystemDialog;->propertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/Model;->removeOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    return-void
.end method
