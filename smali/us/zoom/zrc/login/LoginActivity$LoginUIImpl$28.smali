.class Lus/zoom/zrc/login/LoginActivity$LoginUIImpl$28;
.super Lus/zoom/androidlib/util/EventAction;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;->onUpdateZRCVersion(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;

.field final synthetic val$version:Ljava/lang/String;


# direct methods
.method constructor <init>(Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1173
    iput-object p1, p0, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl$28;->this$0:Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;

    iput-object p3, p0, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl$28;->val$version:Ljava/lang/String;

    invoke-direct {p0, p2}, Lus/zoom/androidlib/util/EventAction;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run(Lus/zoom/androidlib/util/IUIElement;)V
    .locals 1

    .line 1176
    check-cast p1, Lus/zoom/zrc/login/LoginActivity;

    iget-object v0, p0, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl$28;->val$version:Ljava/lang/String;

    invoke-static {p1, v0}, Lus/zoom/zrc/login/LoginActivity;->access$2100(Lus/zoom/zrc/login/LoginActivity;Ljava/lang/String;)V

    return-void
.end method
