.class Lus/zoom/zrc/login/LoginActivity$18;
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

    .line 627
    iput-object p1, p0, Lus/zoom/zrc/login/LoginActivity$18;->this$0:Lus/zoom/zrc/login/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const-string p1, "User clicked logout in room added dialog..."

    const/4 p2, 0x0

    .line 630
    new-array v0, p2, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 631
    iget-object p1, p0, Lus/zoom/zrc/login/LoginActivity$18;->this$0:Lus/zoom/zrc/login/LoginActivity;

    invoke-virtual {p1}, Lus/zoom/zrc/login/LoginActivity;->getPresenter()Lus/zoom/zrc/login/LoginContract$IPresenter;

    move-result-object p1

    invoke-interface {p1, p2}, Lus/zoom/zrc/login/LoginContract$IPresenter;->signOut(Z)V

    return-void
.end method
