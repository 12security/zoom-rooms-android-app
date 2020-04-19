.class Lus/zoom/zrc/view/MeetingInformationView$3;
.super Ljava/lang/Object;
.source "MeetingInformationView.java"

# interfaces
.implements Lus/zoom/zrc/view/CallingCountryFragment$CallinCountryListItemListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/view/MeetingInformationView;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/MeetingInformationView;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/MeetingInformationView;)V
    .locals 0

    .line 281
    iput-object p1, p0, Lus/zoom/zrc/view/MeetingInformationView$3;->this$0:Lus/zoom/zrc/view/MeetingInformationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lus/zoom/zrcsdk/model/ZRCMeetingInfoCountryCode;)V
    .locals 6

    .line 284
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingInformationView$3;->this$0:Lus/zoom/zrc/view/MeetingInformationView;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lus/zoom/zrc/view/MeetingInformationView;->access$300(Lus/zoom/zrc/view/MeetingInformationView;Lus/zoom/zrcsdk/model/ZRCMeetingInfoCountryCode;Z)Ljava/lang/String;

    move-result-object v0

    .line 285
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x1

    if-nez v2, :cond_0

    .line 286
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingInformationView$3;->this$0:Lus/zoom/zrc/view/MeetingInformationView;

    invoke-static {v0}, Lus/zoom/zrc/view/MeetingInformationView;->access$000(Lus/zoom/zrc/view/MeetingInformationView;)Landroid/widget/TextView;

    move-result-object v0

    sget v2, Lus/zoom/zrcbox/R$string;->toll_free:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 287
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingInformationView$3;->this$0:Lus/zoom/zrc/view/MeetingInformationView;

    invoke-static {v0}, Lus/zoom/zrc/view/MeetingInformationView;->access$100(Lus/zoom/zrc/view/MeetingInformationView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, p0, Lus/zoom/zrc/view/MeetingInformationView$3;->this$0:Lus/zoom/zrc/view/MeetingInformationView;

    invoke-static {v2, p1, v4}, Lus/zoom/zrc/view/MeetingInformationView;->access$300(Lus/zoom/zrc/view/MeetingInformationView;Lus/zoom/zrcsdk/model/ZRCMeetingInfoCountryCode;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 288
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingInformationView$3;->this$0:Lus/zoom/zrc/view/MeetingInformationView;

    invoke-static {v0}, Lus/zoom/zrc/view/MeetingInformationView;->access$400(Lus/zoom/zrc/view/MeetingInformationView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 290
    :cond_0
    iget-object v2, p0, Lus/zoom/zrc/view/MeetingInformationView$3;->this$0:Lus/zoom/zrc/view/MeetingInformationView;

    invoke-static {v2}, Lus/zoom/zrc/view/MeetingInformationView;->access$000(Lus/zoom/zrc/view/MeetingInformationView;)Landroid/widget/TextView;

    move-result-object v2

    sget v5, Lus/zoom/zrcbox/R$string;->dial:I

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    .line 291
    iget-object v2, p0, Lus/zoom/zrc/view/MeetingInformationView$3;->this$0:Lus/zoom/zrc/view/MeetingInformationView;

    invoke-static {v2}, Lus/zoom/zrc/view/MeetingInformationView;->access$100(Lus/zoom/zrc/view/MeetingInformationView;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingInformationView$3;->this$0:Lus/zoom/zrc/view/MeetingInformationView;

    invoke-static {v0}, Lus/zoom/zrc/view/MeetingInformationView;->access$400(Lus/zoom/zrc/view/MeetingInformationView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 293
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingInformationView$3;->this$0:Lus/zoom/zrc/view/MeetingInformationView;

    invoke-static {v0, p1, v4}, Lus/zoom/zrc/view/MeetingInformationView;->access$300(Lus/zoom/zrc/view/MeetingInformationView;Lus/zoom/zrcsdk/model/ZRCMeetingInfoCountryCode;Z)Ljava/lang/String;

    move-result-object v0

    .line 294
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 295
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingInformationView$3;->this$0:Lus/zoom/zrc/view/MeetingInformationView;

    invoke-static {v0}, Lus/zoom/zrc/view/MeetingInformationView;->access$400(Lus/zoom/zrc/view/MeetingInformationView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 297
    :cond_1
    iget-object v2, p0, Lus/zoom/zrc/view/MeetingInformationView$3;->this$0:Lus/zoom/zrc/view/MeetingInformationView;

    invoke-static {v2}, Lus/zoom/zrc/view/MeetingInformationView;->access$400(Lus/zoom/zrc/view/MeetingInformationView;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 298
    iget-object v2, p0, Lus/zoom/zrc/view/MeetingInformationView$3;->this$0:Lus/zoom/zrc/view/MeetingInformationView;

    invoke-static {v2}, Lus/zoom/zrc/view/MeetingInformationView;->access$500(Lus/zoom/zrc/view/MeetingInformationView;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 301
    :goto_0
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingInformationView$3;->this$0:Lus/zoom/zrc/view/MeetingInformationView;

    invoke-static {v0}, Lus/zoom/zrc/view/MeetingInformationView;->access$600(Lus/zoom/zrc/view/MeetingInformationView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingInfoCountryCode;->getCountryId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "drawable"

    iget-object v5, p0, Lus/zoom/zrc/view/MeetingInformationView$3;->this$0:Lus/zoom/zrc/view/MeetingInformationView;

    .line 302
    invoke-static {v5}, Lus/zoom/zrc/view/MeetingInformationView;->access$600(Lus/zoom/zrc/view/MeetingInformationView;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 301
    invoke-virtual {v0, v2, v3, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_2

    .line 304
    iget-object v2, p0, Lus/zoom/zrc/view/MeetingInformationView$3;->this$0:Lus/zoom/zrc/view/MeetingInformationView;

    invoke-static {v2}, Lus/zoom/zrc/view/MeetingInformationView;->access$600(Lus/zoom/zrc/view/MeetingInformationView;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 305
    iget-object v2, p0, Lus/zoom/zrc/view/MeetingInformationView$3;->this$0:Lus/zoom/zrc/view/MeetingInformationView;

    invoke-static {v2}, Lus/zoom/zrc/view/MeetingInformationView;->access$700(Lus/zoom/zrc/view/MeetingInformationView;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 307
    :cond_2
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingInfoCountryCode;->getCountryId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 308
    iget-object v2, p0, Lus/zoom/zrc/view/MeetingInformationView$3;->this$0:Lus/zoom/zrc/view/MeetingInformationView;

    invoke-static {v2}, Lus/zoom/zrc/view/MeetingInformationView;->access$600(Lus/zoom/zrc/view/MeetingInformationView;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lus/zoom/zrc/view/MeetingInformationView$3;->this$0:Lus/zoom/zrc/view/MeetingInformationView;

    invoke-static {v3}, Lus/zoom/zrc/view/MeetingInformationView;->access$700(Lus/zoom/zrc/view/MeetingInformationView;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lus/zoom/zrc/utils/ZRCUIUtils;->setEmptyCountryCodeFlagDrawable(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/CharSequence;)V

    .line 310
    :goto_1
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingInformationView$3;->this$0:Lus/zoom/zrc/view/MeetingInformationView;

    invoke-static {v0}, Lus/zoom/zrc/view/MeetingInformationView;->access$700(Lus/zoom/zrc/view/MeetingInformationView;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v2, p0, Lus/zoom/zrc/view/MeetingInformationView$3;->this$0:Lus/zoom/zrc/view/MeetingInformationView;

    invoke-static {v2}, Lus/zoom/zrc/view/MeetingInformationView;->access$600(Lus/zoom/zrc/view/MeetingInformationView;)Landroid/content/Context;

    move-result-object v2

    sget v3, Lus/zoom/zrcbox/R$string;->country_code_in_meeting_info_view_des:I

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingInfoCountryCode;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 311
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingInformationView$3;->this$0:Lus/zoom/zrc/view/MeetingInformationView;

    invoke-static {v0, p1}, Lus/zoom/zrc/view/MeetingInformationView;->access$802(Lus/zoom/zrc/view/MeetingInformationView;Lus/zoom/zrcsdk/model/ZRCMeetingInfoCountryCode;)Lus/zoom/zrcsdk/model/ZRCMeetingInfoCountryCode;

    return-void
.end method
