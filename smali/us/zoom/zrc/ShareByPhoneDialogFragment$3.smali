.class Lus/zoom/zrc/ShareByPhoneDialogFragment$3;
.super Ljava/lang/Object;
.source "ShareByPhoneDialogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/ShareByPhoneDialogFragment;->showDialFragment()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/ShareByPhoneDialogFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/ShareByPhoneDialogFragment;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lus/zoom/zrc/ShareByPhoneDialogFragment$3;->this$0:Lus/zoom/zrc/ShareByPhoneDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 205
    iget-object v0, p0, Lus/zoom/zrc/ShareByPhoneDialogFragment$3;->this$0:Lus/zoom/zrc/ShareByPhoneDialogFragment;

    invoke-static {v0}, Lus/zoom/zrc/ShareByPhoneDialogFragment;->access$000(Lus/zoom/zrc/ShareByPhoneDialogFragment;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 206
    sget-object v0, Lus/zoom/zrc/ShareByPhoneDialogFragment;->TAG:Ljava/lang/String;

    const-string v1, "showDialFragment run() called,  but view is null."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 209
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/ShareByPhoneDialogFragment$3;->this$0:Lus/zoom/zrc/ShareByPhoneDialogFragment;

    invoke-static {v0}, Lus/zoom/zrc/ShareByPhoneDialogFragment;->access$000(Lus/zoom/zrc/ShareByPhoneDialogFragment;)Landroid/view/View;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$id;->ll_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 210
    iget-object v1, p0, Lus/zoom/zrc/ShareByPhoneDialogFragment$3;->this$0:Lus/zoom/zrc/ShareByPhoneDialogFragment;

    invoke-virtual {v1}, Lus/zoom/zrc/ShareByPhoneDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lus/zoom/androidlib/util/UIUtil;->isTabletOrTV(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x8

    .line 211
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method
