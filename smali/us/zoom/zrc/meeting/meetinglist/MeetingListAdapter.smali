.class public Lus/zoom/zrc/meeting/meetinglist/MeetingListAdapter;
.super Landroid/widget/BaseAdapter;
.source "MeetingListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrc/meeting/meetinglist/MeetingListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCMeetingListItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 49
    iput-object p1, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 58
    iget-object v0, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListAdapter;->mList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 63
    iget-object v0, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p3, 0x0

    if-nez p2, :cond_0

    .line 77
    iget-object p2, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lus/zoom/zrcbox/R$layout;->meeting_list_item:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 78
    new-instance v0, Lus/zoom/zrc/meeting/meetinglist/MeetingListAdapter$ViewHolder;

    invoke-direct {v0, p2}, Lus/zoom/zrc/meeting/meetinglist/MeetingListAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 79
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 81
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lus/zoom/zrc/meeting/meetinglist/MeetingListAdapter$ViewHolder;

    .line 85
    :goto_0
    iget-object v1, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListAdapter;->mList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    .line 88
    invoke-static {}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->getInstance()Lus/zoom/zrc/model/ZRCMeetingListItemHelper;

    move-result-object v1

    iget-object v2, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v2}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->calculateStartTime(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 89
    invoke-static {v0}, Lus/zoom/zrc/meeting/meetinglist/MeetingListAdapter$ViewHolder;->access$000(Lus/zoom/zrc/meeting/meetinglist/MeetingListAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    invoke-static {}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->getInstance()Lus/zoom/zrc/model/ZRCMeetingListItemHelper;

    move-result-object v1

    invoke-virtual {v1, p1}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->calculateAmPm(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Ljava/lang/String;

    move-result-object v1

    .line 94
    invoke-static {v0}, Lus/zoom/zrc/meeting/meetinglist/MeetingListAdapter$ViewHolder;->access$100(Lus/zoom/zrc/meeting/meetinglist/MeetingListAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 95
    invoke-static {v0}, Lus/zoom/zrc/meeting/meetinglist/MeetingListAdapter$ViewHolder;->access$100(Lus/zoom/zrc/meeting/meetinglist/MeetingListAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    invoke-static {v0}, Lus/zoom/zrc/meeting/meetinglist/MeetingListAdapter$ViewHolder;->access$200(Lus/zoom/zrc/meeting/meetinglist/MeetingListAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 99
    invoke-static {v0}, Lus/zoom/zrc/meeting/meetinglist/MeetingListAdapter$ViewHolder;->access$200(Lus/zoom/zrc/meeting/meetinglist/MeetingListAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->getInstance()Lus/zoom/zrc/model/ZRCMeetingListItemHelper;

    move-result-object v2

    iget-object v4, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4, p1}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->getMeetingTopic(Landroid/content/Context;Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    invoke-static {}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->getInstance()Lus/zoom/zrc/model/ZRCMeetingListItemHelper;

    move-result-object v1

    invoke-virtual {v1, p1}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->getMeetingNumber(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)Ljava/lang/String;

    move-result-object v1

    .line 103
    invoke-static {v0}, Lus/zoom/zrc/meeting/meetinglist/MeetingListAdapter$ViewHolder;->access$300(Lus/zoom/zrc/meeting/meetinglist/MeetingListAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    const/16 v4, 0x8

    :goto_1
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 104
    invoke-static {v0}, Lus/zoom/zrc/meeting/meetinglist/MeetingListAdapter$ViewHolder;->access$400(Lus/zoom/zrc/meeting/meetinglist/MeetingListAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    invoke-static {}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->getInstance()Lus/zoom/zrc/model/ZRCMeetingListItemHelper;

    move-result-object v1

    invoke-virtual {v1, p1}, Lus/zoom/zrc/model/ZRCMeetingListItemHelper;->getMeetingIconRes(Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)I

    move-result p1

    .line 108
    invoke-static {v0}, Lus/zoom/zrc/meeting/meetinglist/MeetingListAdapter$ViewHolder;->access$500(Lus/zoom/zrc/meeting/meetinglist/MeetingListAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const/16 p3, 0x8

    :goto_2
    invoke-virtual {v1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz p1, :cond_3

    .line 110
    invoke-static {v0}, Lus/zoom/zrc/meeting/meetinglist/MeetingListAdapter$ViewHolder;->access$500(Lus/zoom/zrc/meeting/meetinglist/MeetingListAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_3
    return-object p2
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCMeetingListItem;",
            ">;)V"
        }
    .end annotation

    .line 53
    iput-object p1, p0, Lus/zoom/zrc/meeting/meetinglist/MeetingListAdapter;->mList:Ljava/util/List;

    return-void
.end method
