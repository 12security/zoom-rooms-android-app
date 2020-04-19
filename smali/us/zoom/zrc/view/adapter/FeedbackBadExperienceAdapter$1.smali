.class Lus/zoom/zrc/view/adapter/FeedbackBadExperienceAdapter$1;
.super Ljava/lang/Object;
.source "FeedbackBadExperienceAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/view/adapter/FeedbackBadExperienceAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/adapter/FeedbackBadExperienceAdapter;

.field final synthetic val$item:Lus/zoom/zrcsdk/model/ZRCFeedbackBadExperienceInfo;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/adapter/FeedbackBadExperienceAdapter;ILus/zoom/zrcsdk/model/ZRCFeedbackBadExperienceInfo;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lus/zoom/zrc/view/adapter/FeedbackBadExperienceAdapter$1;->this$0:Lus/zoom/zrc/view/adapter/FeedbackBadExperienceAdapter;

    iput p2, p0, Lus/zoom/zrc/view/adapter/FeedbackBadExperienceAdapter$1;->val$position:I

    iput-object p3, p0, Lus/zoom/zrc/view/adapter/FeedbackBadExperienceAdapter$1;->val$item:Lus/zoom/zrcsdk/model/ZRCFeedbackBadExperienceInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 49
    iget-object p1, p0, Lus/zoom/zrc/view/adapter/FeedbackBadExperienceAdapter$1;->this$0:Lus/zoom/zrc/view/adapter/FeedbackBadExperienceAdapter;

    invoke-static {p1}, Lus/zoom/zrc/view/adapter/FeedbackBadExperienceAdapter;->access$100(Lus/zoom/zrc/view/adapter/FeedbackBadExperienceAdapter;)Lus/zoom/zrc/view/adapter/FeedbackBadExperienceAdapter$onViewClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lus/zoom/zrc/view/adapter/FeedbackBadExperienceAdapter$1;->this$0:Lus/zoom/zrc/view/adapter/FeedbackBadExperienceAdapter;

    invoke-static {p1}, Lus/zoom/zrc/view/adapter/FeedbackBadExperienceAdapter;->access$100(Lus/zoom/zrc/view/adapter/FeedbackBadExperienceAdapter;)Lus/zoom/zrc/view/adapter/FeedbackBadExperienceAdapter$onViewClickListener;

    move-result-object p1

    iget v0, p0, Lus/zoom/zrc/view/adapter/FeedbackBadExperienceAdapter$1;->val$position:I

    iget-object v1, p0, Lus/zoom/zrc/view/adapter/FeedbackBadExperienceAdapter$1;->val$item:Lus/zoom/zrcsdk/model/ZRCFeedbackBadExperienceInfo;

    invoke-interface {p1, v0, v1}, Lus/zoom/zrc/view/adapter/FeedbackBadExperienceAdapter$onViewClickListener;->onViewCheckBoxClick(ILus/zoom/zrcsdk/model/ZRCFeedbackBadExperienceInfo;)V

    :cond_0
    return-void
.end method
