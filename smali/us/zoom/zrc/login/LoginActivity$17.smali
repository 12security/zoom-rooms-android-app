.class Lus/zoom/zrc/login/LoginActivity$17;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/login/LoginActivity;->setupZoomRoomAddedDialogButtons(Lus/zoom/zrc/base/app/ZRCAlertDialogFragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/login/LoginActivity;


# direct methods
.method constructor <init>(Lus/zoom/zrc/login/LoginActivity;)V
    .locals 0

    .line 621
    iput-object p1, p0, Lus/zoom/zrc/login/LoginActivity$17;->this$0:Lus/zoom/zrc/login/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 624
    iget-object p1, p0, Lus/zoom/zrc/login/LoginActivity$17;->this$0:Lus/zoom/zrc/login/LoginActivity;

    invoke-virtual {p1}, Lus/zoom/zrc/login/LoginActivity;->getPresenter()Lus/zoom/zrc/login/LoginContract$IPresenter;

    move-result-object p1

    invoke-interface {p1}, Lus/zoom/zrc/login/LoginContract$IPresenter;->connectToCreatedRoom()V

    return-void
.end method
