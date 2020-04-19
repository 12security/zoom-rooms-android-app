.class public Lus/zoom/zrc/view/adapter/CallHistoryAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "CallHistoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrc/view/adapter/CallHistoryAdapter$OnItemClickListener;,
        Lus/zoom/zrc/view/adapter/CallHistoryAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lus/zoom/zrc/view/adapter/CallHistoryAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static final CALL_TYPE_PSTN:I = 0x1

.field public static final CALL_TYPE_SIP:I = 0x2


# instance fields
.field private callType:I

.field private context:Landroid/content/Context;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ICallHistoryItem;",
            ">;"
        }
    .end annotation
.end field

.field private onItemClickListener:Lus/zoom/zrc/view/adapter/CallHistoryAdapter$OnItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ICallHistoryItem;",
            ">;)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 39
    iput-object p1, p0, Lus/zoom/zrc/view/adapter/CallHistoryAdapter;->context:Landroid/content/Context;

    .line 40
    iput p2, p0, Lus/zoom/zrc/view/adapter/CallHistoryAdapter;->callType:I

    .line 41
    iput-object p3, p0, Lus/zoom/zrc/view/adapter/CallHistoryAdapter;->list:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/view/adapter/CallHistoryAdapter;)Lus/zoom/zrc/view/adapter/CallHistoryAdapter$OnItemClickListener;
    .locals 0

    .line 28
    iget-object p0, p0, Lus/zoom/zrc/view/adapter/CallHistoryAdapter;->onItemClickListener:Lus/zoom/zrc/view/adapter/CallHistoryAdapter$OnItemClickListener;

    return-object p0
.end method

.method private filterCountryCodeList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/CountryCode;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/CountryCode;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 180
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 183
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 185
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrcsdk/model/CountryCode;

    .line 186
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/CountryCode;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 187
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/CountryCode;->getCode()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 188
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0

    .line 181
    :cond_3
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private static hasPrefix(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 176
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private isDialOutHistoryEnable(Ljava/lang/String;)Z
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    .line 128
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x7

    .line 134
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v3

    invoke-virtual {v3}, Lus/zoom/zrc/model/Model;->getAppState()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 135
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrc/model/Model;->getMeetingType()I

    move-result v2

    if-nez v2, :cond_1

    .line 136
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrc/model/AppModel;->getMeetingInfo()Lus/zoom/zrcsdk/model/ZRCMeetingInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 137
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrc/model/AppModel;->getMeetingInfo()Lus/zoom/zrcsdk/model/ZRCMeetingInfo;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCMeetingInfo;->getCalloutCountryCodeList()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 139
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 140
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lus/zoom/zrcsdk/model/ZRCMeetingInfoCountryCode;

    .line 141
    new-instance v4, Lus/zoom/zrcsdk/model/CountryCode;

    invoke-virtual {v3}, Lus/zoom/zrcsdk/model/ZRCMeetingInfoCountryCode;->getCountryId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lus/zoom/zrcsdk/model/ZRCMeetingInfoCountryCode;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lus/zoom/zrcsdk/model/ZRCMeetingInfoCountryCode;->getDisplay()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lus/zoom/zrcsdk/model/ZRCMeetingInfoCountryCode;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v5, v6, v7, v3}, Lus/zoom/zrcsdk/model/CountryCode;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 144
    :cond_1
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrc/model/AppModel;->getLoginInfo()Lus/zoom/zrcsdk/model/LoginInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 145
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/AppModel;->getLoginInfo()Lus/zoom/zrcsdk/model/LoginInfo;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/LoginInfo;->getCalloutCountryCodes()Ljava/util/ArrayList;

    move-result-object v1

    :cond_2
    if-eqz v1, :cond_7

    .line 148
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    const-string v2, "+"

    .line 156
    invoke-static {p1, v2}, Lus/zoom/zrc/view/adapter/CallHistoryAdapter;->hasPrefix(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, " "

    .line 157
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_6

    .line 159
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 161
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lus/zoom/zrcsdk/model/CountryCode;

    .line 162
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/CountryCode;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_5
    const-string v2, "#"

    .line 167
    invoke-static {p1, v2}, Lus/zoom/zrc/view/adapter/CallHistoryAdapter;->hasPrefix(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 168
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    const-string v2, "999"

    invoke-direct {p0, v1, v2}, Lus/zoom/zrc/view/adapter/CallHistoryAdapter;->filterCountryCodeList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le p1, v1, :cond_6

    const/4 p1, 0x1

    const/4 v0, 0x1

    :cond_6
    :goto_1
    return v0

    :cond_7
    :goto_2
    return v0

    :cond_8
    :goto_3
    return v0
.end method


# virtual methods
.method public getCallType()I
    .locals 1

    .line 45
    iget v0, p0, Lus/zoom/zrc/view/adapter/CallHistoryAdapter;->callType:I

    return v0
.end method

.method public getItemCount()I
    .locals 2

    .line 105
    iget-object v0, p0, Lus/zoom/zrc/view/adapter/CallHistoryAdapter;->list:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 106
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/view/adapter/CallHistoryAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    return v1
.end method

.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ICallHistoryItem;",
            ">;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lus/zoom/zrc/view/adapter/CallHistoryAdapter;->list:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 28
    check-cast p1, Lus/zoom/zrc/view/adapter/CallHistoryAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lus/zoom/zrc/view/adapter/CallHistoryAdapter;->onBindViewHolder(Lus/zoom/zrc/view/adapter/CallHistoryAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lus/zoom/zrc/view/adapter/CallHistoryAdapter$ViewHolder;I)V
    .locals 4

    .line 72
    iget-object v0, p0, Lus/zoom/zrc/view/adapter/CallHistoryAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lus/zoom/zrcsdk/model/ICallHistoryItem;

    .line 74
    iget-object v0, p1, Lus/zoom/zrc/view/adapter/CallHistoryAdapter$ViewHolder;->rlCover:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setTranslationX(F)V

    if-nez p2, :cond_0

    .line 77
    iget-object p1, p1, Lus/zoom/zrc/view/adapter/CallHistoryAdapter$ViewHolder;->itemView:Landroid/view/View;

    sget p2, Lus/zoom/zrcbox/R$id;->tag_enable_cout:I

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void

    .line 81
    :cond_0
    iget v0, p0, Lus/zoom/zrc/view/adapter/CallHistoryAdapter;->callType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 82
    invoke-interface {p2}, Lus/zoom/zrcsdk/model/ICallHistoryItem;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lus/zoom/zrc/view/adapter/CallHistoryAdapter;->isDialOutHistoryEnable(Ljava/lang/String;)Z

    move-result v0

    .line 83
    iget-object v1, p1, Lus/zoom/zrc/view/adapter/CallHistoryAdapter$ViewHolder;->tvHistoryNumber:Landroid/widget/TextView;

    iget-object v2, p0, Lus/zoom/zrc/view/adapter/CallHistoryAdapter;->context:Landroid/content/Context;

    if-eqz v0, :cond_1

    sget v3, Lus/zoom/zrcbox/R$color;->zm_black:I

    goto :goto_0

    :cond_1
    sget v3, Lus/zoom/zrcbox/R$color;->call_out_disable:I

    :goto_0
    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 84
    iget-object v1, p1, Lus/zoom/zrc/view/adapter/CallHistoryAdapter$ViewHolder;->tvTime:Landroid/widget/TextView;

    iget-object v2, p0, Lus/zoom/zrc/view/adapter/CallHistoryAdapter;->context:Landroid/content/Context;

    if-eqz v0, :cond_2

    sget v3, Lus/zoom/zrcbox/R$color;->zm_black:I

    goto :goto_1

    :cond_2
    sget v3, Lus/zoom/zrcbox/R$color;->call_out_disable:I

    :goto_1
    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 85
    iget-object v1, p1, Lus/zoom/zrc/view/adapter/CallHistoryAdapter$ViewHolder;->itemView:Landroid/view/View;

    sget v2, Lus/zoom/zrcbox/R$id;->tag_enable_cout:I

    if-eqz v0, :cond_3

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_2

    :cond_3
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_2
    invoke-virtual {v1, v2, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_3

    .line 87
    :cond_4
    iget-object v0, p1, Lus/zoom/zrc/view/adapter/CallHistoryAdapter$ViewHolder;->tvHistoryNumber:Landroid/widget/TextView;

    iget-object v1, p0, Lus/zoom/zrc/view/adapter/CallHistoryAdapter;->context:Landroid/content/Context;

    sget v2, Lus/zoom/zrcbox/R$color;->zm_black:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 88
    iget-object v0, p1, Lus/zoom/zrc/view/adapter/CallHistoryAdapter$ViewHolder;->tvTime:Landroid/widget/TextView;

    iget-object v1, p0, Lus/zoom/zrc/view/adapter/CallHistoryAdapter;->context:Landroid/content/Context;

    sget v2, Lus/zoom/zrcbox/R$color;->zm_black:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 91
    :goto_3
    iget-object v0, p1, Lus/zoom/zrc/view/adapter/CallHistoryAdapter$ViewHolder;->tvHistoryNumber:Landroid/widget/TextView;

    invoke-interface {p2}, Lus/zoom/zrcsdk/model/ICallHistoryItem;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v0, p1, Lus/zoom/zrc/view/adapter/CallHistoryAdapter$ViewHolder;->tvTime:Landroid/widget/TextView;

    iget-object v1, p0, Lus/zoom/zrc/view/adapter/CallHistoryAdapter;->context:Landroid/content/Context;

    invoke-interface {p2}, Lus/zoom/zrcsdk/model/ICallHistoryItem;->getTime()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lus/zoom/zrc/utils/Util;->formatCallHistoryTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v0, p1, Lus/zoom/zrc/view/adapter/CallHistoryAdapter$ViewHolder;->rlCover:Landroid/widget/RelativeLayout;

    new-instance v1, Lus/zoom/zrc/view/adapter/CallHistoryAdapter$1;

    invoke-direct {v1, p0, p1, p2}, Lus/zoom/zrc/view/adapter/CallHistoryAdapter$1;-><init>(Lus/zoom/zrc/view/adapter/CallHistoryAdapter;Lus/zoom/zrc/view/adapter/CallHistoryAdapter$ViewHolder;Lus/zoom/zrcsdk/model/ICallHistoryItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 28
    invoke-virtual {p0, p1, p2}, Lus/zoom/zrc/view/adapter/CallHistoryAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lus/zoom/zrc/view/adapter/CallHistoryAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lus/zoom/zrc/view/adapter/CallHistoryAdapter$ViewHolder;
    .locals 8

    .line 63
    iget-object p2, p0, Lus/zoom/zrc/view/adapter/CallHistoryAdapter;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lus/zoom/zrcbox/R$layout;->dial_history_list_item_recycler:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 64
    sget p1, Lus/zoom/zrcbox/R$id;->rl_cover:I

    invoke-virtual {v4, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Landroid/widget/RelativeLayout;

    .line 65
    sget p1, Lus/zoom/zrcbox/R$id;->tv_history_number:I

    invoke-virtual {v4, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Landroid/widget/TextView;

    .line 66
    sget p1, Lus/zoom/zrcbox/R$id;->tv_time:I

    invoke-virtual {v4, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v7, p1

    check-cast v7, Landroid/widget/TextView;

    .line 67
    new-instance p1, Lus/zoom/zrc/view/adapter/CallHistoryAdapter$ViewHolder;

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lus/zoom/zrc/view/adapter/CallHistoryAdapter$ViewHolder;-><init>(Lus/zoom/zrc/view/adapter/CallHistoryAdapter;Landroid/view/View;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object p1
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ICallHistoryItem;",
            ">;)V"
        }
    .end annotation

    .line 54
    iput-object p1, p0, Lus/zoom/zrc/view/adapter/CallHistoryAdapter;->list:Ljava/util/List;

    return-void
.end method

.method public setOnItemClickListener(Lus/zoom/zrc/view/adapter/CallHistoryAdapter$OnItemClickListener;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lus/zoom/zrc/view/adapter/CallHistoryAdapter;->onItemClickListener:Lus/zoom/zrc/view/adapter/CallHistoryAdapter$OnItemClickListener;

    return-void
.end method
