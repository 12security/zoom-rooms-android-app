.class Lus/zoom/zrc/login/LoginSelectWorkModeFragment$1;
.super Ljava/lang/Object;
.source "LoginSelectWorkModeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/login/LoginSelectWorkModeFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/login/LoginSelectWorkModeFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/login/LoginSelectWorkModeFragment;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lus/zoom/zrc/login/LoginSelectWorkModeFragment$1;->this$0:Lus/zoom/zrc/login/LoginSelectWorkModeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 41
    iget-object p1, p0, Lus/zoom/zrc/login/LoginSelectWorkModeFragment$1;->this$0:Lus/zoom/zrc/login/LoginSelectWorkModeFragment;

    invoke-virtual {p1}, Lus/zoom/zrc/login/LoginSelectWorkModeFragment;->getPresenter()Lus/zoom/zrc/login/LoginContract$IPresenter;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lus/zoom/zrc/login/LoginContract$IPresenter;->selectWorkMode(I)V

    return-void
.end method
