.class Lus/zoom/zrc/view/BaseDialFragment$1;
.super Ljava/lang/Object;
.source "BaseDialFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/view/BaseDialFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/BaseDialFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/BaseDialFragment;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lus/zoom/zrc/view/BaseDialFragment$1;->this$0:Lus/zoom/zrc/view/BaseDialFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 32
    iget-object p1, p0, Lus/zoom/zrc/view/BaseDialFragment$1;->this$0:Lus/zoom/zrc/view/BaseDialFragment;

    invoke-virtual {p1}, Lus/zoom/zrc/view/BaseDialFragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    .line 33
    instance-of v0, p1, Lus/zoom/zrc/view/DialFragment;

    if-eqz v0, :cond_0

    .line 34
    check-cast p1, Lus/zoom/zrc/view/DialFragment;

    invoke-virtual {p1}, Lus/zoom/zrc/view/DialFragment;->onBackClicked()V

    goto :goto_0

    .line 36
    :cond_0
    iget-object p1, p0, Lus/zoom/zrc/view/BaseDialFragment$1;->this$0:Lus/zoom/zrc/view/BaseDialFragment;

    invoke-virtual {p1}, Lus/zoom/zrc/view/BaseDialFragment;->dismiss()V

    :goto_0
    return-void
.end method
