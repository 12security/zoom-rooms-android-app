.class Lus/zoom/zrc/login/LoginActivity$LoginUIImpl$4;
.super Lus/zoom/androidlib/util/EventAction;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;->setShowFooter(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;Ljava/lang/String;Z)V
    .locals 0

    .line 884
    iput-object p1, p0, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl$4;->this$0:Lus/zoom/zrc/login/LoginActivity$LoginUIImpl;

    iput-boolean p3, p0, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl$4;->val$show:Z

    invoke-direct {p0, p2}, Lus/zoom/androidlib/util/EventAction;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run(Lus/zoom/androidlib/util/IUIElement;)V
    .locals 1

    .line 887
    check-cast p1, Lus/zoom/zrc/login/LoginActivity;

    iget-boolean v0, p0, Lus/zoom/zrc/login/LoginActivity$LoginUIImpl$4;->val$show:Z

    invoke-static {p1, v0}, Lus/zoom/zrc/login/LoginActivity;->access$700(Lus/zoom/zrc/login/LoginActivity;Z)V

    return-void
.end method
