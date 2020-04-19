.class public Lus/zoom/zrc/view/adapter/FeedbackBadExperienceAdapter;
.super Lus/zoom/zrc/view/adapter/ModelBaseAdapter;
.source "FeedbackBadExperienceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrc/view/adapter/FeedbackBadExperienceAdapter$ViewHolder;,
        Lus/zoom/zrc/view/adapter/FeedbackBadExperienceAdapter$onViewClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lus/zoom/zrc/view/adapter/ModelBaseAdapter<",
        "Lus/zoom/zrcsdk/model/ZRCFeedbackBadExperienceInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private listener:Lus/zoom/zrc/view/adapter/FeedbackBadExperienceAdapter$onViewClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCFeedbackBadExperienceInfo;",
            ">;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Lus/zoom/zrc/view/adapter/ModelBaseAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$100(Lus/zoom/zrc/view/adapter/FeedbackBadExperienceAdapter;)Lus/zoom/zrc/view/adapter/FeedbackBadExperienceAdapter$onViewClickListener;
    .locals 0

    .line 16
    iget-object p0, p0, Lus/zoom/zrc/view/adapter/FeedbackBadExperienceAdapter;->listener:Lus/zoom/zrc/view/adapter/FeedbackBadExperienceAdapter$onViewClickListener;

    return-object p0
.end method


# virtual methods
.method public getListener()Lus/zoom/zrc/view/adapter/FeedbackBadExperienceAdapter$onViewClickListener;
    .locals 1

    .line 56
    iget-object v0, p0, Lus/zoom/zrc/view/adapter/FeedbackBadExperienceAdapter;->listener:Lus/zoom/zrc/view/adapter/FeedbackBadExperienceAdapter$onViewClickListener;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .line 31
    invoke-virtual {p0, p1}, Lus/zoom/zrc/view/adapter/FeedbackBadExperienceAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lus/zoom/zrcsdk/model/ZRCFeedbackBadExperienceInfo;

    if-nez p2, :cond_0

    .line 34
    new-instance p2, Lus/zoom/zrc/view/adapter/FeedbackBadExperienceAdapter$ViewHolder;

    const/4 v1, 0x0

    invoke-direct {p2, v1}, Lus/zoom/zrc/view/adapter/FeedbackBadExperienceAdapter$ViewHolder;-><init>(Lus/zoom/zrc/view/adapter/FeedbackBadExperienceAdapter$1;)V

    .line 35
    iget-object v1, p0, Lus/zoom/zrc/view/adapter/FeedbackBadExperienceAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lus/zoom/zrcbox/R$layout;->feed_back_bad_experience_adapter:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 36
    sget v1, Lus/zoom/zrcbox/R$id;->checkbox:I

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lus/zoom/zrc/view/adapter/FeedbackBadExperienceAdapter$ViewHolder;->checkbox:Landroid/widget/ImageView;

    .line 37
    sget v1, Lus/zoom/zrcbox/R$id;->feed_back_reason:I

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lus/zoom/zrc/view/adapter/FeedbackBadExperienceAdapter$ViewHolder;->feedback_reason:Landroid/widget/TextView;

    .line 38
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lus/zoom/zrc/view/adapter/FeedbackBadExperienceAdapter$ViewHolder;

    move-object v4, p3

    move-object p3, p2

    move-object p2, v4

    .line 42
    :goto_0
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCFeedbackBadExperienceInfo;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p2, Lus/zoom/zrc/view/adapter/FeedbackBadExperienceAdapter$ViewHolder;->checkbox:Landroid/widget/ImageView;

    sget v2, Lus/zoom/zrcbox/R$drawable;->feedbackcheckboxselected:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 43
    :cond_1
    iget-object v1, p2, Lus/zoom/zrc/view/adapter/FeedbackBadExperienceAdapter$ViewHolder;->checkbox:Landroid/widget/ImageView;

    sget v2, Lus/zoom/zrcbox/R$drawable;->feedbackcheckbox:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 44
    :goto_1
    iget-object p2, p2, Lus/zoom/zrc/view/adapter/FeedbackBadExperienceAdapter$ViewHolder;->feedback_reason:Landroid/widget/TextView;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCFeedbackBadExperienceInfo;->getReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    new-instance p2, Lus/zoom/zrc/view/adapter/FeedbackBadExperienceAdapter$1;

    invoke-direct {p2, p0, p1, v0}, Lus/zoom/zrc/view/adapter/FeedbackBadExperienceAdapter$1;-><init>(Lus/zoom/zrc/view/adapter/FeedbackBadExperienceAdapter;ILus/zoom/zrcsdk/model/ZRCFeedbackBadExperienceInfo;)V

    invoke-virtual {p3, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p3
.end method

.method public setListener(Lus/zoom/zrc/view/adapter/FeedbackBadExperienceAdapter$onViewClickListener;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lus/zoom/zrc/view/adapter/FeedbackBadExperienceAdapter;->listener:Lus/zoom/zrc/view/adapter/FeedbackBadExperienceAdapter$onViewClickListener;

    return-void
.end method
