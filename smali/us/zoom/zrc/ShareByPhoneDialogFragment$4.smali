.class Lus/zoom/zrc/ShareByPhoneDialogFragment$4;
.super Ljava/lang/Object;
.source "ShareByPhoneDialogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/ShareByPhoneDialogFragment;->showSipCallFragment()V
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

    .line 229
    iput-object p1, p0, Lus/zoom/zrc/ShareByPhoneDialogFragment$4;->this$0:Lus/zoom/zrc/ShareByPhoneDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 232
    iget-object v0, p0, Lus/zoom/zrc/ShareByPhoneDialogFragment$4;->this$0:Lus/zoom/zrc/ShareByPhoneDialogFragment;

    invoke-static {v0}, Lus/zoom/zrc/ShareByPhoneDialogFragment;->access$000(Lus/zoom/zrc/ShareByPhoneDialogFragment;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 233
    sget-object v0, Lus/zoom/zrc/ShareByPhoneDialogFragment;->TAG:Ljava/lang/String;

    const-string v2, "showSipCallFragment run() called,  but view is null."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 236
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/ShareByPhoneDialogFragment$4;->this$0:Lus/zoom/zrc/ShareByPhoneDialogFragment;

    invoke-static {v0}, Lus/zoom/zrc/ShareByPhoneDialogFragment;->access$000(Lus/zoom/zrc/ShareByPhoneDialogFragment;)Landroid/view/View;

    move-result-object v0

    sget v2, Lus/zoom/zrcbox/R$id;->ll_title:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 237
    iget-object v2, p0, Lus/zoom/zrc/ShareByPhoneDialogFragment$4;->this$0:Lus/zoom/zrc/ShareByPhoneDialogFragment;

    invoke-virtual {v2}, Lus/zoom/zrc/ShareByPhoneDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lus/zoom/androidlib/util/UIUtil;->isTabletOrTV(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 238
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method
