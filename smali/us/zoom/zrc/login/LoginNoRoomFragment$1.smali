.class Lus/zoom/zrc/login/LoginNoRoomFragment$1;
.super Ljava/lang/Object;
.source "LoginNoRoomFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/login/LoginNoRoomFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/login/LoginNoRoomFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/login/LoginNoRoomFragment;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lus/zoom/zrc/login/LoginNoRoomFragment$1;->this$0:Lus/zoom/zrc/login/LoginNoRoomFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 44
    invoke-static {}, Lus/zoom/zrc/login/LoginUsageTrack;->sendClickCreateRoom()V

    .line 45
    iget-object p1, p0, Lus/zoom/zrc/login/LoginNoRoomFragment$1;->this$0:Lus/zoom/zrc/login/LoginNoRoomFragment;

    invoke-virtual {p1}, Lus/zoom/zrc/login/LoginNoRoomFragment;->getNavigator()Lus/zoom/zrc/login/LoginContract$INavigator;

    move-result-object p1

    invoke-interface {p1}, Lus/zoom/zrc/login/LoginContract$INavigator;->onCreateNewZoomRoom()V

    return-void
.end method
