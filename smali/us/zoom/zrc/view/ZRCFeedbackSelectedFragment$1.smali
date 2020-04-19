.class Lus/zoom/zrc/view/ZRCFeedbackSelectedFragment$1;
.super Ljava/lang/Object;
.source "ZRCFeedbackSelectedFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/view/ZRCFeedbackSelectedFragment;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/ZRCFeedbackSelectedFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/ZRCFeedbackSelectedFragment;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lus/zoom/zrc/view/ZRCFeedbackSelectedFragment$1;->this$0:Lus/zoom/zrc/view/ZRCFeedbackSelectedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 115
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCFeedbackSelectedFragment$1;->this$0:Lus/zoom/zrc/view/ZRCFeedbackSelectedFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/view/ZRCFeedbackSelectedFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCFeedbackSelectedFragment$1;->this$0:Lus/zoom/zrc/view/ZRCFeedbackSelectedFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/view/ZRCFeedbackSelectedFragment;->dismiss()V

    :cond_0
    return-void
.end method
