.class Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment$6;
.super Ljava/lang/Object;
.source "LoginFailedToConnectRoomFragment.java"

# interfaces
.implements Lus/zoom/zrc/base/widget/RepeatClickDetector$OnRepeatClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;->setupImageTapToSendProblemReport()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;)V
    .locals 0

    .line 370
    iput-object p1, p0, Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment$6;->this$0:Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRepeatClicked(I)V
    .locals 0

    .line 373
    iget-object p1, p0, Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment$6;->this$0:Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;

    invoke-virtual {p1}, Lus/zoom/zrc/login/LoginFailedToConnectRoomFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object p1

    invoke-static {p1}, Lus/zoom/zrc/view/ZRCProblemReportFragment;->show(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;)V

    return-void
.end method
