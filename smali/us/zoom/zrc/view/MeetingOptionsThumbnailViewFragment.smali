.class public Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;
.super Lus/zoom/zrc/base/app/ZRCDialogFragment;
.source "MeetingOptionsThumbnailViewFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private context:Landroid/content/Context;

.field private convertView:Landroid/view/View;

.field private height:I

.field private inVideoStrip:Z

.field private mIvDownArrow:Landroid/widget/ImageView;

.field private mIvUpArrow:Landroid/widget/ImageView;

.field private startTime:J

.field private swapContentBotton:Landroid/widget/ImageView;

.field private swapContentLayout:Landroid/widget/LinearLayout;

.field private thumbnailMaxshareContentIcon:Landroid/widget/ImageView;

.field private thumbnail_min_video:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private thumbnail_min_video1:Landroid/widget/ImageView;

.field private thumbnail_min_video2:Landroid/widget/ImageView;

.field private thumbnail_min_video3:Landroid/widget/ImageView;

.field private thumbnail_min_video4:Landroid/widget/ImageView;

.field private thumbnail_min_video5:Landroid/widget/ImageView;

.field private thumbnail_min_video6:Landroid/widget/ImageView;

.field private thumbnail_min_video7:Landroid/widget/ImageView;

.field private thumbnail_min_video8:Landroid/widget/ImageView;

.field private thumbnail_prompt:Landroid/widget/TextView;

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;-><init>()V

    const-wide/16 v0, 0x0

    .line 58
    iput-wide v0, p0, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->startTime:J

    return-void
.end method

.method private initView()V
    .locals 0

    return-void
.end method


# virtual methods
.method public changeVideoIcon(Lus/zoom/zrcsdk/model/VideoPageStatus;)V
    .locals 6

    .line 173
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/VideoPageStatus;->getVideoCountInCurrentPage()I

    move-result v0

    const-string v1, ""

    .line 174
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VideoCountInCurrentPage="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/VideoPageStatus;->getVideoCountInCurrentPage()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, p1, v3}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 176
    invoke-static {}, Lus/zoom/zrc/utils/ZRCMeetingVideoLayoutStyleHelper;->isInFloatingShareContent()Z

    move-result p1

    const/4 v1, 0x7

    const/16 v3, 0x8

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    add-int/2addr v0, p1

    .line 178
    iget-object v4, p0, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->thumbnailMaxshareContentIcon:Landroid/widget/ImageView;

    sget v5, Lus/zoom/zrcbox/R$drawable;->thumbnail_max_video:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 179
    iget-object v4, p0, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->thumbnail_min_video1:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 180
    iget-object v4, p0, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->thumbnail_min_video1:Landroid/widget/ImageView;

    sget v5, Lus/zoom/zrcbox/R$drawable;->thumbnail_min_share_content:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    if-ge p1, v0, :cond_4

    if-gt v0, v3, :cond_4

    :goto_0
    add-int/lit8 v4, v0, -0x1

    if-gt p1, v4, :cond_0

    .line 184
    iget-object v4, p0, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->thumbnail_min_video:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-gt v0, v1, :cond_4

    .line 187
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->thumbnail_min_video:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 192
    :cond_1
    invoke-static {}, Lus/zoom/zrc/utils/ZRCMeetingVideoLayoutStyleHelper;->isSharing()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 193
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->thumbnailMaxshareContentIcon:Landroid/widget/ImageView;

    sget v4, Lus/zoom/zrcbox/R$drawable;->thumbnail_maxshare_content:I

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 195
    :cond_2
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->thumbnailMaxshareContentIcon:Landroid/widget/ImageView;

    sget v4, Lus/zoom/zrcbox/R$drawable;->thumbnail_max_video:I

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 197
    :goto_2
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->thumbnail_min_video1:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 198
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->thumbnail_min_video1:Landroid/widget/ImageView;

    sget v4, Lus/zoom/zrcbox/R$drawable;->thumbnail_min_video:I

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    if-ltz v0, :cond_4

    if-gt v0, v3, :cond_4

    const/4 p1, 0x0

    :goto_3
    add-int/lit8 v4, v0, -0x1

    if-gt p1, v4, :cond_3

    .line 202
    iget-object v4, p0, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->thumbnail_min_video:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_3
    :goto_4
    if-gt v0, v1, :cond_4

    .line 205
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->thumbnail_min_video:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 62
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onAttach(Landroid/content/Context;)V

    .line 63
    iput-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->context:Landroid/content/Context;

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 64
    invoke-virtual {p0, v0, v1}, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->setStyle(II)V

    .line 65
    invoke-virtual {p0}, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/androidlib/util/UIUtil;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    invoke-static {p1}, Lus/zoom/zrc/utils/Util;->getWidth(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3f19999a    # 0.6f

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->width:I

    goto :goto_0

    .line 68
    :cond_0
    invoke-static {p1}, Lus/zoom/zrc/utils/Util;->getWidth(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3f733333    # 0.95f

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->width:I

    .line 70
    :goto_0
    invoke-static {p1}, Lus/zoom/zrc/utils/Util;->getHeight(Landroid/content/Context;)I

    move-result p1

    int-to-float p1, p1

    const v0, 0x3f4ccccd    # 0.8f

    mul-float p1, p1, v0

    float-to-int p1, p1

    iput p1, p0, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->height:I

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 156
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 157
    sget v0, Lus/zoom/zrcbox/R$id;->swap_content_image:I

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 158
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/ZRCSdk;->getConfApp()Lus/zoom/zrcsdk/ConfApp;

    move-result-object p1

    invoke-static {}, Lus/zoom/zrc/utils/ZRCMeetingVideoLayoutStyleHelper;->isInFloatingShareContent()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lus/zoom/zrcsdk/ConfApp;->switchToFloatingShareForSingleScreen(Z)I

    return-void

    .line 161
    :cond_0
    sget v0, Lus/zoom/zrcbox/R$id;->iv_up_arrow:I

    if-ne p1, v0, :cond_1

    .line 162
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/ZRCSdk;->getConfApp()Lus/zoom/zrcsdk/ConfApp;

    move-result-object p1

    const/4 v0, 0x0

    iget-boolean v1, p0, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->inVideoStrip:Z

    invoke-virtual {p1, v0, v1}, Lus/zoom/zrcsdk/ConfApp;->turnVideoPage(ZZ)I

    return-void

    .line 165
    :cond_1
    sget v0, Lus/zoom/zrcbox/R$id;->iv_down_arrow:I

    if-ne p1, v0, :cond_2

    .line 166
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/ZRCSdk;->getConfApp()Lus/zoom/zrcsdk/ConfApp;

    move-result-object p1

    iget-boolean v0, p0, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->inVideoStrip:Z

    invoke-virtual {p1, v1, v0}, Lus/zoom/zrcsdk/ConfApp;->turnVideoPage(ZZ)I

    return-void

    :cond_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 135
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 136
    invoke-virtual {p0}, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object p1

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->registerOnPropertyChangedCallback(Landroidx/databinding/BaseObservable;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 76
    iget-object p3, p0, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->convertView:Landroid/view/View;

    if-nez p3, :cond_0

    .line 77
    sget p3, Lus/zoom/zrcbox/R$layout;->meeting_options_thumbnail_view_fragment:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->convertView:Landroid/view/View;

    .line 78
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->convertView:Landroid/view/View;

    sget p2, Lus/zoom/zrcbox/R$id;->thumbnail_maxshare_content_icon:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->thumbnailMaxshareContentIcon:Landroid/widget/ImageView;

    .line 79
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->convertView:Landroid/view/View;

    sget p2, Lus/zoom/zrcbox/R$id;->swap_content_image:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->swapContentBotton:Landroid/widget/ImageView;

    .line 80
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->convertView:Landroid/view/View;

    sget p2, Lus/zoom/zrcbox/R$id;->swap_content_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->swapContentLayout:Landroid/widget/LinearLayout;

    .line 81
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->convertView:Landroid/view/View;

    sget p2, Lus/zoom/zrcbox/R$id;->iv_up_arrow:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->mIvUpArrow:Landroid/widget/ImageView;

    .line 82
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->convertView:Landroid/view/View;

    sget p2, Lus/zoom/zrcbox/R$id;->iv_down_arrow:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->mIvDownArrow:Landroid/widget/ImageView;

    .line 83
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->convertView:Landroid/view/View;

    sget p2, Lus/zoom/zrcbox/R$id;->thumbnail_prompt:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->thumbnail_prompt:Landroid/widget/TextView;

    .line 84
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->convertView:Landroid/view/View;

    sget p2, Lus/zoom/zrcbox/R$id;->thumbnail_min_video1:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->thumbnail_min_video1:Landroid/widget/ImageView;

    .line 85
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->convertView:Landroid/view/View;

    sget p2, Lus/zoom/zrcbox/R$id;->thumbnail_min_video2:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->thumbnail_min_video2:Landroid/widget/ImageView;

    .line 86
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->convertView:Landroid/view/View;

    sget p2, Lus/zoom/zrcbox/R$id;->thumbnail_min_video3:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->thumbnail_min_video3:Landroid/widget/ImageView;

    .line 87
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->convertView:Landroid/view/View;

    sget p2, Lus/zoom/zrcbox/R$id;->thumbnail_min_video4:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->thumbnail_min_video4:Landroid/widget/ImageView;

    .line 88
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->convertView:Landroid/view/View;

    sget p2, Lus/zoom/zrcbox/R$id;->thumbnail_min_video5:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->thumbnail_min_video5:Landroid/widget/ImageView;

    .line 89
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->convertView:Landroid/view/View;

    sget p2, Lus/zoom/zrcbox/R$id;->thumbnail_min_video6:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->thumbnail_min_video6:Landroid/widget/ImageView;

    .line 90
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->convertView:Landroid/view/View;

    sget p2, Lus/zoom/zrcbox/R$id;->thumbnail_min_video7:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->thumbnail_min_video7:Landroid/widget/ImageView;

    .line 91
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->convertView:Landroid/view/View;

    sget p2, Lus/zoom/zrcbox/R$id;->thumbnail_min_video8:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->thumbnail_min_video8:Landroid/widget/ImageView;

    .line 92
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->thumbnail_min_video:Ljava/util/List;

    .line 93
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->thumbnail_min_video:Ljava/util/List;

    iget-object p2, p0, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->thumbnail_min_video1:Landroid/widget/ImageView;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->thumbnail_min_video:Ljava/util/List;

    iget-object p2, p0, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->thumbnail_min_video2:Landroid/widget/ImageView;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->thumbnail_min_video:Ljava/util/List;

    iget-object p2, p0, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->thumbnail_min_video3:Landroid/widget/ImageView;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->thumbnail_min_video:Ljava/util/List;

    iget-object p2, p0, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->thumbnail_min_video4:Landroid/widget/ImageView;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->thumbnail_min_video:Ljava/util/List;

    iget-object p2, p0, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->thumbnail_min_video5:Landroid/widget/ImageView;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->thumbnail_min_video:Ljava/util/List;

    iget-object p2, p0, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->thumbnail_min_video6:Landroid/widget/ImageView;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->thumbnail_min_video:Ljava/util/List;

    iget-object p2, p0, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->thumbnail_min_video7:Landroid/widget/ImageView;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->thumbnail_min_video:Ljava/util/List;

    iget-object p2, p0, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->thumbnail_min_video8:Landroid/widget/ImageView;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->swapContentBotton:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->mIvUpArrow:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->mIvDownArrow:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 111
    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewManager;

    if-eqz p1, :cond_1

    .line 112
    iget-object p2, p0, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->convertView:Landroid/view/View;

    invoke-interface {p1, p2}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    .line 114
    :cond_1
    :goto_0
    invoke-direct {p0}, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->initView()V

    .line 115
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->convertView:Landroid/view/View;

    return-object p1
.end method

.method public onReceivedPropertyChangedCallbackInActive(Landroidx/databinding/Observable;I)V
    .locals 0

    .line 141
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onReceivedPropertyChangedCallbackInActive(Landroidx/databinding/Observable;I)V

    .line 142
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->videoLayoutStatus:I

    if-ne p1, p2, :cond_0

    .line 143
    invoke-static {}, Lus/zoom/zrc/utils/ZRCMeetingVideoLayoutStyleHelper;->canVideoControlShowInFloatingVideoStrip()Z

    move-result p1

    if-nez p1, :cond_0

    .line 144
    invoke-virtual {p0}, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->dismiss()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 127
    invoke-super {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onResume()V

    .line 128
    invoke-virtual {p0}, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->updateSwapContentLayoutVisible()V

    .line 129
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getVideoLayoutStatus()Lus/zoom/zrcsdk/model/VideoLayoutStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->updateVideoLayoutChangerView(Lus/zoom/zrcsdk/model/VideoLayoutStatus;)V

    .line 130
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getVideoThumbInfo()Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;->getPageStatus()Lus/zoom/zrcsdk/model/VideoPageStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->changeVideoIcon(Lus/zoom/zrcsdk/model/VideoPageStatus;)V

    return-void
.end method

.method public onStart()V
    .locals 3

    .line 120
    invoke-super {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onStart()V

    .line 121
    invoke-virtual {p0}, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 122
    iget v1, p0, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->width:I

    iget v2, p0, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->height:I

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    return-void
.end method

.method public updateSwapContentLayoutVisible()V
    .locals 2

    .line 213
    invoke-static {}, Lus/zoom/zrc/utils/ZRCMeetingVideoLayoutStyleHelper;->canSwitchFloatingShareContent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->swapContentLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 216
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->swapContentLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public updateTurnVideoArrowStatus(Lus/zoom/zrcsdk/model/VideoPageStatus;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 270
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 271
    iget-wide v2, p0, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->startTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x32

    cmp-long v4, v0, v2

    if-lez v4, :cond_7

    if-nez p1, :cond_1

    .line 274
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->mIvUpArrow:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 275
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->mIvDownArrow:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 276
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->thumbnail_prompt:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .line 279
    :cond_1
    invoke-static {}, Lus/zoom/zrc/utils/ZRCMeetingVideoLayoutStyleHelper;->isOnlyOnePageForFloatingVideoStrip()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 280
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->mIvUpArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 281
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->mIvDownArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 282
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->thumbnail_prompt:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 286
    :cond_2
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getVideoLayoutStatus()Lus/zoom/zrcsdk/model/VideoLayoutStatus;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/VideoLayoutStatus;->isInWallview()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getVideoLayoutStatus()Lus/zoom/zrcsdk/model/VideoLayoutStatus;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/VideoLayoutStatus;->isInFloatingVideoStrip()Z

    move-result v0

    .line 287
    :cond_3
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/VideoPageStatus;->isInFirstPage()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/VideoPageStatus;->isInLastPage()Z

    move-result v0

    .line 288
    :cond_4
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/VideoPageStatus;->isInFirstPage()Z

    move-result v0

    .line 289
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/VideoPageStatus;->isInLastPage()Z

    move-result p1

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    .line 292
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->mIvUpArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_0

    .line 294
    :cond_5
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->mIvUpArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    :goto_0
    if-eqz p1, :cond_6

    .line 297
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->mIvDownArrow:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_1

    .line 299
    :cond_6
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->mIvDownArrow:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    :cond_7
    :goto_1
    return-void
.end method

.method public updateVideoLayoutChangerView(Lus/zoom/zrcsdk/model/VideoLayoutStatus;)V
    .locals 6

    .line 221
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->startTime:J

    .line 222
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/VideoLayoutStatus;->isInFloatingVideoStrip()Z

    move-result v0

    .line 227
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/VideoLayoutStatus;->isInWallview()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 228
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/AppModel;->getVideoPageStatus()Lus/zoom/zrcsdk/model/VideoPageStatus;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 229
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/AppModel;->getVideoPageStatus()Lus/zoom/zrcsdk/model/VideoPageStatus;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/VideoPageStatus;->isInFirstPage()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/AppModel;->getVideoPageStatus()Lus/zoom/zrcsdk/model/VideoPageStatus;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/VideoPageStatus;->isInLastPage()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 230
    :goto_0
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/AppModel;->getVideoPageStatus()Lus/zoom/zrcsdk/model/VideoPageStatus;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/VideoPageStatus;->isInFirstPage()Z

    move-result v1

    .line 231
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v4

    invoke-virtual {v4}, Lus/zoom/zrc/model/AppModel;->getVideoPageStatus()Lus/zoom/zrcsdk/model/VideoPageStatus;

    move-result-object v4

    invoke-virtual {v4}, Lus/zoom/zrcsdk/model/VideoPageStatus;->isInLastPage()Z

    move-result v4

    .line 232
    iput-boolean v2, p0, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->inVideoStrip:Z

    goto :goto_2

    .line 235
    :cond_1
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/VideoLayoutStatus;->isInFloatingVideoStrip()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/AppModel;->getVideoThumbInfo()Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 236
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/AppModel;->getVideoThumbInfo()Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;->getPageStatus()Lus/zoom/zrcsdk/model/VideoPageStatus;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/VideoPageStatus;->isInFirstPage()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 237
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/AppModel;->getVideoThumbInfo()Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;->getPageStatus()Lus/zoom/zrcsdk/model/VideoPageStatus;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/VideoPageStatus;->isInLastPage()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 238
    :goto_1
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/AppModel;->getVideoThumbInfo()Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;->getPageStatus()Lus/zoom/zrcsdk/model/VideoPageStatus;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/VideoPageStatus;->isInFirstPage()Z

    move-result v1

    .line 239
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v4

    invoke-virtual {v4}, Lus/zoom/zrc/model/AppModel;->getVideoThumbInfo()Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;

    move-result-object v4

    invoke-virtual {v4}, Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;->getPageStatus()Lus/zoom/zrcsdk/model/VideoPageStatus;

    move-result-object v4

    invoke-virtual {v4}, Lus/zoom/zrcsdk/model/VideoPageStatus;->isInLastPage()Z

    move-result v4

    .line 240
    iput-boolean v3, p0, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->inVideoStrip:Z

    goto :goto_2

    :cond_3
    const/4 p1, 0x1

    const/4 v1, 0x1

    const/4 v4, 0x1

    :goto_2
    if-eqz v0, :cond_5

    if-eqz p1, :cond_4

    goto :goto_3

    .line 248
    :cond_4
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->mIvUpArrow:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 249
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->mIvDownArrow:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 250
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->thumbnail_prompt:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 244
    :cond_5
    :goto_3
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->mIvUpArrow:Landroid/widget/ImageView;

    const/4 v5, 0x4

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 245
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->mIvDownArrow:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 246
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->thumbnail_prompt:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_4
    if-eqz v0, :cond_9

    .line 252
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->mIvUpArrow:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->mIvDownArrow:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_9

    :cond_6
    if-nez v1, :cond_7

    .line 254
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->mIvUpArrow:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_5

    .line 256
    :cond_7
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->mIvUpArrow:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    :goto_5
    if-nez v4, :cond_8

    .line 259
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->mIvDownArrow:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_6

    .line 261
    :cond_8
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsThumbnailViewFragment;->mIvDownArrow:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    :cond_9
    :goto_6
    return-void
.end method
