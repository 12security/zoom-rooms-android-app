.class Lus/zoom/zrc/login/LoginBaseFragment$1;
.super Ljava/lang/Object;
.source "LoginBaseFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/login/LoginBaseFragment;->delayAnnounceForAccessibility(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/login/LoginBaseFragment;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lus/zoom/zrc/login/LoginBaseFragment;Landroid/view/View;)V
    .locals 0

    .line 246
    iput-object p1, p0, Lus/zoom/zrc/login/LoginBaseFragment$1;->this$0:Lus/zoom/zrc/login/LoginBaseFragment;

    iput-object p2, p0, Lus/zoom/zrc/login/LoginBaseFragment$1;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 249
    iget-object v0, p0, Lus/zoom/zrc/login/LoginBaseFragment$1;->this$0:Lus/zoom/zrc/login/LoginBaseFragment;

    iget-object v1, p0, Lus/zoom/zrc/login/LoginBaseFragment$1;->val$v:Landroid/view/View;

    invoke-static {v0, v1}, Lus/zoom/zrc/login/LoginBaseFragment;->access$000(Lus/zoom/zrc/login/LoginBaseFragment;Landroid/view/View;)V

    return-void
.end method
