.class Lus/zoom/zrc/login/LoginActivity$LoginUIImpl$21;
.super Lus/zoom/androidlib/util/EventAction;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;->onSetRoomPassCode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;


# direct methods
.method constructor <init>(Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;Ljava/lang/String;)V
    .locals 0

    .line 1096
    iput-object p1, p0, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl$21;->this$0:Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;

    invoke-direct {p0, p2}, Lus/zoom/androidlib/util/EventAction;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run(Lus/zoom/androidlib/util/IUIElement;)V
    .locals 2

    .line 1099
    check-cast p1, Lus/zoom/zrc/login/LoginActivity;

    .line 1100
    invoke-virtual {p1}, Lus/zoom/zrc/login/LoginActivity;->getFragmentRoomPassCode()Lus/zoom/zrc/login/LoginRoomPassCodeFragment;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lus/zoom/zrc/login/LoginActivity;->access$100(Lus/zoom/zrc/login/LoginActivity;Lus/zoom/zrc/login/LoginBaseFragment;Z)V

    return-void
.end method
