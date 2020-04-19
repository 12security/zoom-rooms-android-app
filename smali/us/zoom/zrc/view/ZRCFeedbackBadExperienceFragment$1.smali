.class Lus/zoom/zrc/view/ZRCFeedbackBadExperienceFragment$1;
.super Ljava/lang/Object;
.source "ZRCFeedbackBadExperienceFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/view/ZRCFeedbackBadExperienceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/ZRCFeedbackBadExperienceFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/ZRCFeedbackBadExperienceFragment;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lus/zoom/zrc/view/ZRCFeedbackBadExperienceFragment$1;->this$0:Lus/zoom/zrc/view/ZRCFeedbackBadExperienceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 54
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCFeedbackBadExperienceFragment$1;->this$0:Lus/zoom/zrc/view/ZRCFeedbackBadExperienceFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/view/ZRCFeedbackBadExperienceFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCFeedbackBadExperienceFragment$1;->this$0:Lus/zoom/zrc/view/ZRCFeedbackBadExperienceFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/view/ZRCFeedbackBadExperienceFragment;->dismiss()V

    :cond_0
    return-void
.end method
