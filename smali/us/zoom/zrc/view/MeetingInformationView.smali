.class public Lus/zoom/zrc/view/MeetingInformationView;
.super Landroid/widget/FrameLayout;
.source "MeetingInformationView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrc/view/MeetingInformationView$OnClickCloseListener;
    }
.end annotation


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCMeetingInfoCountryCode;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDefaultCountryCode:Lus/zoom/zrcsdk/model/ZRCMeetingInfoCountryCode;

.field private mDial:Landroid/widget/TextView;

.field private mJoinByPhoneView:Landroid/view/View;

.field private mLLTollFree:Landroid/view/View;

.field private mLayoutPassword:Landroid/view/View;

.field private mLvTsp:Landroid/widget/ListView;

.field private mMeetingId1:Landroid/widget/TextView;

.field private mMeetingId2:Landroid/widget/TextView;

.field private mParticipantLayout:Landroid/view/View;

.field private mParticitionId:Landroid/widget/TextView;

.field private mSpcountry:Landroid/widget/ImageView;

.field private mSpcountryWrapper:Landroid/widget/LinearLayout;

.field private mTitle:Lus/zoom/androidlib/widget/ZMIOSStyleTitlebarLayout;

.field private mTollFree:Landroid/widget/TextView;

.field private mTspAdapter:Lus/zoom/zrc/view/adapter/MeetingInfoTspAdapter;

.field private mTvPasswordKey:Landroid/widget/TextView;

.field private mTvPasswordValue:Landroid/widget/TextView;

.field private mViewLine:Landroid/view/View;

.field private mZrcCloseBtn:Landroid/widget/ImageView;

.field private mZrcDialTxt:Landroid/widget/TextView;

.field private onClickCloseBtnListener:Lus/zoom/zrc/view/MeetingInformationView$OnClickCloseListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 84
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 62
    new-instance v0, Lus/zoom/zrc/view/adapter/MeetingInfoTspAdapter;

    invoke-direct {v0}, Lus/zoom/zrc/view/adapter/MeetingInfoTspAdapter;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/view/MeetingInformationView;->mTspAdapter:Lus/zoom/zrc/view/adapter/MeetingInfoTspAdapter;

    .line 85
    invoke-direct {p0, p1}, Lus/zoom/zrc/view/MeetingInformationView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    new-instance p2, Lus/zoom/zrc/view/adapter/MeetingInfoTspAdapter;

    invoke-direct {p2}, Lus/zoom/zrc/view/adapter/MeetingInfoTspAdapter;-><init>()V

    iput-object p2, p0, Lus/zoom/zrc/view/MeetingInformationView;->mTspAdapter:Lus/zoom/zrc/view/adapter/MeetingInfoTspAdapter;

    .line 80
    invoke-direct {p0, p1}, Lus/zoom/zrc/view/MeetingInformationView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 74
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    new-instance p2, Lus/zoom/zrc/view/adapter/MeetingInfoTspAdapter;

    invoke-direct {p2}, Lus/zoom/zrc/view/adapter/MeetingInfoTspAdapter;-><init>()V

    iput-object p2, p0, Lus/zoom/zrc/view/MeetingInformationView;->mTspAdapter:Lus/zoom/zrc/view/adapter/MeetingInfoTspAdapter;

    .line 75
    invoke-direct {p0, p1}, Lus/zoom/zrc/view/MeetingInformationView;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/view/MeetingInformationView;)Landroid/widget/TextView;
    .locals 0

    .line 38
    iget-object p0, p0, Lus/zoom/zrc/view/MeetingInformationView;->mZrcDialTxt:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lus/zoom/zrc/view/MeetingInformationView;)Landroid/widget/TextView;
    .locals 0

    .line 38
    iget-object p0, p0, Lus/zoom/zrc/view/MeetingInformationView;->mDial:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lus/zoom/zrc/view/MeetingInformationView;)Lus/zoom/androidlib/widget/ZMIOSStyleTitlebarLayout;
    .locals 0

    .line 38
    iget-object p0, p0, Lus/zoom/zrc/view/MeetingInformationView;->mTitle:Lus/zoom/androidlib/widget/ZMIOSStyleTitlebarLayout;

    return-object p0
.end method

.method static synthetic access$300(Lus/zoom/zrc/view/MeetingInformationView;Lus/zoom/zrcsdk/model/ZRCMeetingInfoCountryCode;Z)Ljava/lang/String;
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lus/zoom/zrc/view/MeetingInformationView;->getPhoneNumberByCountryCode(Lus/zoom/zrcsdk/model/ZRCMeetingInfoCountryCode;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lus/zoom/zrc/view/MeetingInformationView;)Landroid/view/View;
    .locals 0

    .line 38
    iget-object p0, p0, Lus/zoom/zrc/view/MeetingInformationView;->mLLTollFree:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$500(Lus/zoom/zrc/view/MeetingInformationView;)Landroid/widget/TextView;
    .locals 0

    .line 38
    iget-object p0, p0, Lus/zoom/zrc/view/MeetingInformationView;->mTollFree:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$600(Lus/zoom/zrc/view/MeetingInformationView;)Landroid/content/Context;
    .locals 0

    .line 38
    iget-object p0, p0, Lus/zoom/zrc/view/MeetingInformationView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$700(Lus/zoom/zrc/view/MeetingInformationView;)Landroid/widget/ImageView;
    .locals 0

    .line 38
    iget-object p0, p0, Lus/zoom/zrc/view/MeetingInformationView;->mSpcountry:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$802(Lus/zoom/zrc/view/MeetingInformationView;Lus/zoom/zrcsdk/model/ZRCMeetingInfoCountryCode;)Lus/zoom/zrcsdk/model/ZRCMeetingInfoCountryCode;
    .locals 0

    .line 38
    iput-object p1, p0, Lus/zoom/zrc/view/MeetingInformationView;->mDefaultCountryCode:Lus/zoom/zrcsdk/model/ZRCMeetingInfoCountryCode;

    return-object p1
.end method

.method private getPhoneNumberByCountryCode(Lus/zoom/zrcsdk/model/ZRCMeetingInfoCountryCode;Z)Ljava/lang/String;
    .locals 7
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 322
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 323
    invoke-virtual {p0}, Lus/zoom/zrc/view/MeetingInformationView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lus/zoom/zrcbox/R$string;->toll_free_number:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 324
    iget-object v2, p0, Lus/zoom/zrc/view/MeetingInformationView;->list:Ljava/util/List;

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v2, 0x0

    .line 325
    :goto_0
    iget-object v3, p0, Lus/zoom/zrc/view/MeetingInformationView;->list:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 327
    iget-object v3, p0, Lus/zoom/zrc/view/MeetingInformationView;->list:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lus/zoom/zrcsdk/model/ZRCMeetingInfoCountryCode;

    if-eqz p2, :cond_1

    .line 329
    invoke-virtual {v3}, Lus/zoom/zrcsdk/model/ZRCMeetingInfoCountryCode;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    goto :goto_1

    .line 331
    :cond_1
    invoke-virtual {v3}, Lus/zoom/zrcsdk/model/ZRCMeetingInfoCountryCode;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    .line 333
    :goto_1
    invoke-virtual {v3}, Lus/zoom/zrcsdk/model/ZRCMeetingInfoCountryCode;->getCountryId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingInfoCountryCode;->getCountryId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    if-eqz v4, :cond_3

    .line 334
    invoke-virtual {v3}, Lus/zoom/zrcsdk/model/ZRCMeetingInfoCountryCode;->getDisplay()Ljava/lang/String;

    move-result-object v4

    .line 335
    invoke-virtual {v3}, Lus/zoom/zrcsdk/model/ZRCMeetingInfoCountryCode;->getNumber()Ljava/lang/String;

    move-result-object v3

    .line 336
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    move-object v3, v4

    :goto_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "\n"

    .line 337
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 340
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    if-lez p1, :cond_5

    .line 341
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 343
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, ""

    .line 344
    invoke-virtual {p1, v1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private init(Landroid/content/Context;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 90
    iput-object p1, p0, Lus/zoom/zrc/view/MeetingInformationView;->mContext:Landroid/content/Context;

    .line 91
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 92
    sget v1, Lus/zoom/zrcbox/R$layout;->meeting_information:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 93
    sget v1, Lus/zoom/zrcbox/R$id;->zrc_dial_txt:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lus/zoom/zrc/view/MeetingInformationView;->mZrcDialTxt:Landroid/widget/TextView;

    .line 94
    sget v1, Lus/zoom/zrcbox/R$id;->ll_join_by_phone:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lus/zoom/zrc/view/MeetingInformationView;->mJoinByPhoneView:Landroid/view/View;

    .line 95
    sget v1, Lus/zoom/zrcbox/R$id;->v_line:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lus/zoom/zrc/view/MeetingInformationView;->mViewLine:Landroid/view/View;

    .line 96
    sget v1, Lus/zoom/zrcbox/R$id;->ll_participant_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lus/zoom/zrc/view/MeetingInformationView;->mParticipantLayout:Landroid/view/View;

    .line 97
    sget v1, Lus/zoom/zrcbox/R$id;->tv_meeting_id1:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lus/zoom/zrc/view/MeetingInformationView;->mMeetingId1:Landroid/widget/TextView;

    .line 98
    sget v1, Lus/zoom/zrcbox/R$id;->tv_meeting_id2:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lus/zoom/zrc/view/MeetingInformationView;->mMeetingId2:Landroid/widget/TextView;

    .line 99
    sget v1, Lus/zoom/zrcbox/R$id;->tv_dial:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lus/zoom/zrc/view/MeetingInformationView;->mDial:Landroid/widget/TextView;

    .line 100
    sget v1, Lus/zoom/zrcbox/R$id;->tv_toll_free:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lus/zoom/zrc/view/MeetingInformationView;->mTollFree:Landroid/widget/TextView;

    .line 101
    sget v1, Lus/zoom/zrcbox/R$id;->tv_participant_id:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lus/zoom/zrc/view/MeetingInformationView;->mParticitionId:Landroid/widget/TextView;

    .line 102
    sget v1, Lus/zoom/zrcbox/R$id;->panelTitleBar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lus/zoom/androidlib/widget/ZMIOSStyleTitlebarLayout;

    iput-object v1, p0, Lus/zoom/zrc/view/MeetingInformationView;->mTitle:Lus/zoom/androidlib/widget/ZMIOSStyleTitlebarLayout;

    .line 103
    sget v1, Lus/zoom/zrcbox/R$id;->close_btn:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lus/zoom/zrc/view/MeetingInformationView;->mZrcCloseBtn:Landroid/widget/ImageView;

    .line 105
    sget v1, Lus/zoom/zrcbox/R$id;->ll_toll_free:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lus/zoom/zrc/view/MeetingInformationView;->mLLTollFree:Landroid/view/View;

    .line 106
    sget v1, Lus/zoom/zrcbox/R$id;->sp_country:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lus/zoom/zrc/view/MeetingInformationView;->mSpcountry:Landroid/widget/ImageView;

    .line 107
    sget v1, Lus/zoom/zrcbox/R$id;->sp_country_wrapper:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lus/zoom/zrc/view/MeetingInformationView;->mSpcountryWrapper:Landroid/widget/LinearLayout;

    .line 109
    sget v1, Lus/zoom/zrcbox/R$id;->layout_password:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/view/MeetingInformationView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lus/zoom/zrc/view/MeetingInformationView;->mLayoutPassword:Landroid/view/View;

    .line 110
    sget v1, Lus/zoom/zrcbox/R$id;->tv_password_key:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/view/MeetingInformationView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lus/zoom/zrc/view/MeetingInformationView;->mTvPasswordKey:Landroid/widget/TextView;

    .line 111
    sget v1, Lus/zoom/zrcbox/R$id;->tv_password_value:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/view/MeetingInformationView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lus/zoom/zrc/view/MeetingInformationView;->mTvPasswordValue:Landroid/widget/TextView;

    .line 113
    sget v1, Lus/zoom/zrcbox/R$id;->lv_tsp:I

    invoke-virtual {p0, v1}, Lus/zoom/zrc/view/MeetingInformationView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lus/zoom/zrc/view/MeetingInformationView;->mLvTsp:Landroid/widget/ListView;

    .line 115
    invoke-static {p1}, Lus/zoom/androidlib/util/UIUtil;->isTablet(Landroid/content/Context;)Z

    move-result p1

    .line 116
    iget-object v1, p0, Lus/zoom/zrc/view/MeetingInformationView;->mSpcountryWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object v1, p0, Lus/zoom/zrc/view/MeetingInformationView;->mZrcCloseBtn:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object v1, p0, Lus/zoom/zrc/view/MeetingInformationView;->mZrcCloseBtn:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 120
    sget p1, Lus/zoom/zrcbox/R$id;->join_url:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 121
    invoke-static {}, Lus/zoom/zrc/utils/Util;->getJoinUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingInformationView;->mTvPasswordKey:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lus/zoom/zrc/view/MeetingInformationView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lus/zoom/zrcbox/R$string;->zrc_password:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingInformationView;->mLvTsp:Landroid/widget/ListView;

    iget-object v0, p0, Lus/zoom/zrc/view/MeetingInformationView;->mTspAdapter:Lus/zoom/zrc/view/adapter/MeetingInfoTspAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method private updateParticipantInfo(Lus/zoom/zrcsdk/model/ZRCMeetingInfo;)V
    .locals 2
    .param p1    # Lus/zoom/zrcsdk/model/ZRCMeetingInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 245
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingInformationView;->list:Ljava/util/List;

    const/16 v1, 0x8

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 248
    :cond_0
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->getCallinTSPInfoList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 249
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 255
    :cond_1
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingInformationView;->mParticipantLayout:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 250
    :cond_2
    :goto_0
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingInformationView;->mParticipantLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 251
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->getMeetingNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/zrc/utils/Util;->getDisplayMeetingNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 252
    iget-object v1, p0, Lus/zoom/zrc/view/MeetingInformationView;->mMeetingId2:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingInformationView;->mParticitionId:Landroid/widget/TextView;

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->getParticipantId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 246
    :cond_3
    :goto_1
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingInformationView;->mParticipantLayout:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method private updateTSPInfo(Lus/zoom/zrcsdk/model/ZRCMeetingInfo;)V
    .locals 2
    .param p1    # Lus/zoom/zrcsdk/model/ZRCMeetingInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 261
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->getCallinTSPInfoList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 262
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 265
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingInformationView;->mLvTsp:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 266
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingInformationView;->mTspAdapter:Lus/zoom/zrc/view/adapter/MeetingInfoTspAdapter;

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->getCallinTSPInfoList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {v0, p1}, Lus/zoom/zrc/view/adapter/MeetingInfoTspAdapter;->update(Ljava/util/List;)V

    goto :goto_1

    .line 263
    :cond_1
    :goto_0
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingInformationView;->mLvTsp:Landroid/widget/ListView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setVisibility(I)V

    :goto_1
    return-void
.end method


# virtual methods
.method public getDefaultSelection(Ljava/lang/String;Ljava/util/List;)I
    .locals 3
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCMeetingInfoCountryCode;",
            ">;)I"
        }
    .end annotation

    .line 159
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 163
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    if-eqz p1, :cond_1

    .line 164
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lus/zoom/zrcsdk/model/ZRCMeetingInfoCountryCode;

    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCMeetingInfoCountryCode;->getCountryId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 169
    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    .line 170
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 171
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    if-eqz p1, :cond_3

    .line 172
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lus/zoom/zrcsdk/model/ZRCMeetingInfoCountryCode;

    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCMeetingInfoCountryCode;->getCountryId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    return v1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    .line 177
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_6

    .line 178
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrcsdk/model/ZRCMeetingInfoCountryCode;

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCMeetingInfoCountryCode;->getCountryId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "us"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    return p1

    :cond_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_6
    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .line 130
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 131
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingInformationView;->mDial:Landroid/widget/TextView;

    new-instance v1, Lus/zoom/zrc/view/MeetingInformationView$1;

    invoke-direct {v1, p0}, Lus/zoom/zrc/view/MeetingInformationView$1;-><init>(Lus/zoom/zrc/view/MeetingInformationView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 144
    invoke-virtual {p0}, Lus/zoom/zrc/view/MeetingInformationView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/androidlib/util/AccessibilityUtil;->isSpokenFeedbackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lus/zoom/zrc/view/MeetingInformationView;->mTitle:Lus/zoom/androidlib/widget/ZMIOSStyleTitlebarLayout;

    if-eqz v0, :cond_0

    .line 146
    new-instance v1, Lus/zoom/zrc/view/MeetingInformationView$2;

    invoke-direct {v1, p0}, Lus/zoom/zrc/view/MeetingInformationView$2;-><init>(Lus/zoom/zrc/view/MeetingInformationView;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lus/zoom/androidlib/widget/ZMIOSStyleTitlebarLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 272
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 273
    sget v1, Lus/zoom/zrcbox/R$id;->sp_country_wrapper:I

    if-ne v0, v1, :cond_1

    .line 274
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingInformationView;->list:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 277
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/view/MeetingInformationView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lus/zoom/zrcbox/R$dimen;->zrc_meeting_country_popup_window_width:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    .line 278
    new-instance v0, Lus/zoom/zrc/CallingCountryPopupWindow;

    iget-object v1, p0, Lus/zoom/zrc/view/MeetingInformationView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lus/zoom/zrc/view/MeetingInformationView;->mDefaultCountryCode:Lus/zoom/zrcsdk/model/ZRCMeetingInfoCountryCode;

    iget-object v3, p0, Lus/zoom/zrc/view/MeetingInformationView;->list:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3}, Lus/zoom/zrc/CallingCountryPopupWindow;-><init>(Landroid/content/Context;Lus/zoom/zrcsdk/model/ZRCMeetingInfoCountryCode;Ljava/util/List;)V

    .line 279
    iget-object v1, p0, Lus/zoom/zrc/view/MeetingInformationView;->mSpcountry:Landroid/widget/ImageView;

    neg-int p1, p1

    int-to-float p1, p1

    const v2, 0x3e99999a    # 0.3f

    mul-float p1, p1, v2

    float-to-int p1, p1

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lus/zoom/zrc/login/util/ZRCPopupWindowUtils;->showAsDropDown(Landroid/widget/PopupWindow;Landroid/view/View;II)V

    .line 280
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingInformationView;->mSpcountry:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/CallingCountryPopupWindow;->positionTriangleTo(Landroid/view/View;)V

    .line 281
    new-instance p1, Lus/zoom/zrc/view/MeetingInformationView$3;

    invoke-direct {p1, p0}, Lus/zoom/zrc/view/MeetingInformationView$3;-><init>(Lus/zoom/zrc/view/MeetingInformationView;)V

    invoke-virtual {v0, p1}, Lus/zoom/zrc/CallingCountryPopupWindow;->setListener(Lus/zoom/zrc/view/CallingCountryFragment$CallinCountryListItemListener;)V

    .line 314
    invoke-static {v0}, Lus/zoom/zrc/utils/PolycomTrioUtils;->setImmersiveModeForPolycomTrio(Landroid/widget/PopupWindow;)V

    goto :goto_0

    .line 315
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingInformationView;->mZrcCloseBtn:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_2

    .line 316
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingInformationView;->onClickCloseBtnListener:Lus/zoom/zrc/view/MeetingInformationView$OnClickCloseListener;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lus/zoom/zrc/view/MeetingInformationView$OnClickCloseListener;->onClick()V

    :cond_2
    :goto_0
    return-void
.end method

.method public setOnClickCloseBtnListener(Lus/zoom/zrc/view/MeetingInformationView$OnClickCloseListener;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lus/zoom/zrc/view/MeetingInformationView;->onClickCloseBtnListener:Lus/zoom/zrc/view/MeetingInformationView$OnClickCloseListener;

    return-void
.end method

.method public updateMeetingInfo(Lus/zoom/zrcsdk/model/ZRCMeetingInfo;)V
    .locals 11
    .param p1    # Lus/zoom/zrcsdk/model/ZRCMeetingInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 186
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->getMeetingNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/zrc/utils/Util;->getDisplayMeetingNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 187
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->getCallinCountryList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lus/zoom/zrc/view/MeetingInformationView;->list:Ljava/util/List;

    .line 188
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->getMeetingPassword()Ljava/lang/String;

    move-result-object v1

    .line 190
    iget-object v2, p0, Lus/zoom/zrc/view/MeetingInformationView;->mMeetingId1:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    invoke-static {v1}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingInformationView;->mLayoutPassword:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 194
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingInformationView;->mLayoutPassword:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 195
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingInformationView;->mTvPasswordValue:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    :goto_0
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->getDefaultCallinCountry()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/view/MeetingInformationView;->list:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Lus/zoom/zrc/view/MeetingInformationView;->getDefaultSelection(Ljava/lang/String;Ljava/util/List;)I

    move-result v0

    const/4 v1, -0x1

    const/4 v3, 0x4

    if-eq v0, v1, :cond_4

    .line 200
    iget-object v1, p0, Lus/zoom/zrc/view/MeetingInformationView;->list:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrcsdk/model/ZRCMeetingInfoCountryCode;

    invoke-direct {p0, v1, v2}, Lus/zoom/zrc/view/MeetingInformationView;->getPhoneNumberByCountryCode(Lus/zoom/zrcsdk/model/ZRCMeetingInfoCountryCode;Z)Ljava/lang/String;

    move-result-object v1

    .line 201
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_1

    .line 202
    iget-object v1, p0, Lus/zoom/zrc/view/MeetingInformationView;->mZrcDialTxt:Landroid/widget/TextView;

    sget v4, Lus/zoom/zrcbox/R$string;->toll_free:I

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 203
    iget-object v1, p0, Lus/zoom/zrc/view/MeetingInformationView;->mDial:Landroid/widget/TextView;

    iget-object v4, p0, Lus/zoom/zrc/view/MeetingInformationView;->list:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lus/zoom/zrcsdk/model/ZRCMeetingInfoCountryCode;

    invoke-direct {p0, v4, v5}, Lus/zoom/zrc/view/MeetingInformationView;->getPhoneNumberByCountryCode(Lus/zoom/zrcsdk/model/ZRCMeetingInfoCountryCode;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    iget-object v1, p0, Lus/zoom/zrc/view/MeetingInformationView;->mLLTollFree:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 206
    :cond_1
    iget-object v4, p0, Lus/zoom/zrc/view/MeetingInformationView;->mZrcDialTxt:Landroid/widget/TextView;

    sget v6, Lus/zoom/zrcbox/R$string;->dial:I

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    .line 207
    iget-object v4, p0, Lus/zoom/zrc/view/MeetingInformationView;->mDial:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    iget-object v1, p0, Lus/zoom/zrc/view/MeetingInformationView;->mLLTollFree:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 209
    iget-object v1, p0, Lus/zoom/zrc/view/MeetingInformationView;->list:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrcsdk/model/ZRCMeetingInfoCountryCode;

    invoke-direct {p0, v1, v5}, Lus/zoom/zrc/view/MeetingInformationView;->getPhoneNumberByCountryCode(Lus/zoom/zrcsdk/model/ZRCMeetingInfoCountryCode;Z)Ljava/lang/String;

    move-result-object v1

    .line 210
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    .line 211
    iget-object v1, p0, Lus/zoom/zrc/view/MeetingInformationView;->mLLTollFree:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 213
    :cond_2
    iget-object v4, p0, Lus/zoom/zrc/view/MeetingInformationView;->mLLTollFree:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 214
    iget-object v4, p0, Lus/zoom/zrc/view/MeetingInformationView;->mTollFree:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    :goto_1
    iget-object v1, p0, Lus/zoom/zrc/view/MeetingInformationView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lus/zoom/zrc/view/MeetingInformationView;->list:Ljava/util/List;

    .line 219
    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lus/zoom/zrcsdk/model/ZRCMeetingInfoCountryCode;

    invoke-virtual {v6}, Lus/zoom/zrcsdk/model/ZRCMeetingInfoCountryCode;->getCountryId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "drawable"

    iget-object v7, p0, Lus/zoom/zrc/view/MeetingInformationView;->mContext:Landroid/content/Context;

    .line 220
    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 218
    invoke-virtual {v1, v4, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_3

    .line 222
    iget-object v4, p0, Lus/zoom/zrc/view/MeetingInformationView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 223
    iget-object v4, p0, Lus/zoom/zrc/view/MeetingInformationView;->mSpcountry:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 225
    :cond_3
    iget-object v1, p0, Lus/zoom/zrc/view/MeetingInformationView;->list:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrcsdk/model/ZRCMeetingInfoCountryCode;

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCMeetingInfoCountryCode;->getCountryId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 226
    iget-object v4, p0, Lus/zoom/zrc/view/MeetingInformationView;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lus/zoom/zrc/view/MeetingInformationView;->mSpcountry:Landroid/widget/ImageView;

    invoke-static {v4, v6, v1}, Lus/zoom/zrc/utils/ZRCUIUtils;->setEmptyCountryCodeFlagDrawable(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/CharSequence;)V

    .line 228
    :goto_2
    iget-object v1, p0, Lus/zoom/zrc/view/MeetingInformationView;->mSpcountry:Landroid/widget/ImageView;

    iget-object v4, p0, Lus/zoom/zrc/view/MeetingInformationView;->mContext:Landroid/content/Context;

    sget v6, Lus/zoom/zrcbox/R$string;->country_code_in_meeting_info_view_des:I

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v7, p0, Lus/zoom/zrc/view/MeetingInformationView;->list:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lus/zoom/zrcsdk/model/ZRCMeetingInfoCountryCode;

    invoke-virtual {v7}, Lus/zoom/zrcsdk/model/ZRCMeetingInfoCountryCode;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v2

    invoke-virtual {v4, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 229
    iget-object v1, p0, Lus/zoom/zrc/view/MeetingInformationView;->list:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lus/zoom/zrcsdk/model/ZRCMeetingInfoCountryCode;

    iput-object v0, p0, Lus/zoom/zrc/view/MeetingInformationView;->mDefaultCountryCode:Lus/zoom/zrcsdk/model/ZRCMeetingInfoCountryCode;

    goto :goto_3

    .line 231
    :cond_4
    new-instance v0, Lus/zoom/zrcsdk/model/ZRCMeetingInfoCountryCode;

    const-string v5, "US"

    const-string v6, "United States"

    const-wide/16 v7, 0x1

    const-string v9, "+1"

    const-string v10, "+1"

    move-object v4, v0

    invoke-direct/range {v4 .. v10}, Lus/zoom/zrcsdk/model/ZRCMeetingInfoCountryCode;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lus/zoom/zrc/view/MeetingInformationView;->mDefaultCountryCode:Lus/zoom/zrcsdk/model/ZRCMeetingInfoCountryCode;

    .line 233
    :goto_3
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingInformationView;->list:Ljava/util/List;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_5

    goto :goto_4

    .line 237
    :cond_5
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingInformationView;->mJoinByPhoneView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 238
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingInformationView;->mViewLine:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .line 234
    :cond_6
    :goto_4
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingInformationView;->mJoinByPhoneView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 235
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingInformationView;->mViewLine:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 240
    :goto_5
    invoke-direct {p0, p1}, Lus/zoom/zrc/view/MeetingInformationView;->updateParticipantInfo(Lus/zoom/zrcsdk/model/ZRCMeetingInfo;)V

    .line 241
    invoke-direct {p0, p1}, Lus/zoom/zrc/view/MeetingInformationView;->updateTSPInfo(Lus/zoom/zrcsdk/model/ZRCMeetingInfo;)V

    return-void
.end method
