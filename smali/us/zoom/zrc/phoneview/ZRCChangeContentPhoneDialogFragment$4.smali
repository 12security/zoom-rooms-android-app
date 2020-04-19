.class Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment$4;
.super Ljava/lang/Object;
.source "ZRCChangeContentPhoneDialogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;->fakeDrag()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;)V
    .locals 0

    .line 366
    iput-object p1, p0, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment$4;->this$0:Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 369
    iget-object v0, p0, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment$4;->this$0:Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;

    invoke-static {v0}, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;->access$600(Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;)Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment$ZRCChangeContentPhoneScreenPageAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment$ZRCChangeContentPhoneScreenPageAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 370
    iget-object v0, p0, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment$4;->this$0:Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;

    invoke-static {v0}, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;->access$700(Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;)Lus/zoom/zrc/view/ZRCChangeContentPhoneViewPager;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/view/ZRCChangeContentPhoneViewPager;->beginFakeDrag()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment$4;->this$0:Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;

    invoke-static {v0}, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;->access$700(Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;)Lus/zoom/zrc/view/ZRCChangeContentPhoneViewPager;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lus/zoom/zrc/view/ZRCChangeContentPhoneViewPager;->fakeDragBy(F)V

    .line 372
    iget-object v0, p0, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment$4;->this$0:Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;

    invoke-static {v0}, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;->access$700(Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;)Lus/zoom/zrc/view/ZRCChangeContentPhoneViewPager;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/view/ZRCChangeContentPhoneViewPager;->endFakeDrag()V

    :cond_0
    return-void
.end method
