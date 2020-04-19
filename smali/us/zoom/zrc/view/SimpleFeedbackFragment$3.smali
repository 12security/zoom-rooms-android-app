.class Lus/zoom/zrc/view/SimpleFeedbackFragment$3;
.super Ljava/lang/Object;
.source "SimpleFeedbackFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/view/SimpleFeedbackFragment;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/SimpleFeedbackFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/SimpleFeedbackFragment;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lus/zoom/zrc/view/SimpleFeedbackFragment$3;->this$0:Lus/zoom/zrc/view/SimpleFeedbackFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 164
    iget-object v0, p0, Lus/zoom/zrc/view/SimpleFeedbackFragment$3;->this$0:Lus/zoom/zrc/view/SimpleFeedbackFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/view/SimpleFeedbackFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lus/zoom/zrc/view/SimpleFeedbackFragment$3;->this$0:Lus/zoom/zrc/view/SimpleFeedbackFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/view/SimpleFeedbackFragment;->dismiss()V

    :cond_0
    return-void
.end method
