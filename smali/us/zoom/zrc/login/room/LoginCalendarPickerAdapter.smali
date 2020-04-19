.class public Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter;
.super Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter;
.source "LoginCalendarPickerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter$ViewHolder;,
        Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter$ListItemWrapper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter<",
        "Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter$ListItemWrapper;",
        "Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CalendarPickerList"


# instance fields
.field private mCalendarHelper:Lus/zoom/zrc/login/LoginCalendarHelper;

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter$ListItemWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplayData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter$ListItemWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mSelectedCalendarService:Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;


# direct methods
.method constructor <init>(Landroid/content/Context;Lus/zoom/zrc/login/LoginCalendarHelper;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter;->mData:Ljava/util/List;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter;->mDisplayData:Ljava/util/List;

    .line 41
    iput-object p2, p0, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter;->mCalendarHelper:Lus/zoom/zrc/login/LoginCalendarHelper;

    .line 42
    invoke-virtual {p0}, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter;->enableRepeatSelection()V

    .line 43
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic access$300(Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter;)Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;
    .locals 0

    .line 29
    iget-object p0, p0, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter;->mSelectedCalendarService:Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;

    return-object p0
.end method

.method static synthetic access$400(Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter;)Lus/zoom/zrc/login/LoginCalendarHelper;
    .locals 0

    .line 29
    iget-object p0, p0, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter;->mCalendarHelper:Lus/zoom/zrc/login/LoginCalendarHelper;

    return-object p0
.end method

.method private sortDisplayData()V
    .locals 3

    .line 79
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    const/4 v1, 0x0

    .line 80
    invoke-virtual {v0, v1}, Ljava/text/Collator;->setStrength(I)V

    .line 81
    iget-object v1, p0, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter;->mDisplayData:Ljava/util/List;

    new-instance v2, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter$1;

    invoke-direct {v2, p0, v0}, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter$1;-><init>(Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter;Ljava/text/Collator;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 160
    iget-object v0, p0, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter;->mDisplayData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected getKeyForWidth(I)Ljava/lang/String;
    .locals 0

    .line 154
    invoke-virtual {p0, p1}, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter;->getListItem(I)Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter$ListItemWrapper;

    move-result-object p1

    .line 155
    invoke-virtual {p1}, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter$ListItemWrapper;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic getListItem(I)Ljava/lang/Object;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter;->getListItem(I)Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter$ListItemWrapper;

    move-result-object p1

    return-object p1
.end method

.method protected getListItem(I)Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter$ListItemWrapper;
    .locals 1

    .line 165
    iget-object v0, p0, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter;->mDisplayData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter$ListItemWrapper;

    return-object p1
.end method

.method getSelectedCalendarResource()Lus/zoom/zrcsdk/model/ZRCCalendarResourceItem;
    .locals 1

    .line 145
    invoke-virtual {p0}, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter$ListItemWrapper;

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {v0}, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter$ListItemWrapper;->getCalendarResource()Lus/zoom/zrcsdk/model/ZRCCalendarResourceItem;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method getSelectedCalendarService()Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;
    .locals 1

    .line 137
    invoke-virtual {p0}, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter$ListItemWrapper;

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {v0}, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter$ListItemWrapper;->getCalendarService()Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 29
    check-cast p1, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter;->onBindViewHolder(Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter$ViewHolder;I)V
    .locals 3

    .line 176
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 177
    iget-object v0, p0, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter;->mDisplayData:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter$ListItemWrapper;

    .line 178
    invoke-virtual {p2}, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter$ListItemWrapper;->getDisplayEmail()Ljava/lang/String;

    move-result-object v0

    .line 180
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x4

    if-eqz v1, :cond_0

    .line 181
    invoke-static {p1}, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter$ViewHolder;->access$000(Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter$ListItemWrapper;->getDisplayName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    invoke-static {p1}, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter$ViewHolder;->access$100(Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 183
    invoke-static {p1}, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter$ViewHolder;->access$200(Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 185
    :cond_0
    invoke-static {p1}, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter$ViewHolder;->access$100(Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p2}, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter$ListItemWrapper;->getDisplayName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    invoke-static {p1}, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter$ViewHolder;->access$200(Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    invoke-static {p1}, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter$ViewHolder;->access$000(Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 188
    invoke-static {p1}, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter$ViewHolder;->access$100(Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 189
    invoke-static {p1}, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter$ViewHolder;->access$200(Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 29
    invoke-virtual {p0, p1, p2}, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter$ViewHolder;
    .locals 2

    .line 170
    iget-object p2, p0, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v0, Lus/zoom/zrcbox/R$layout;->login_list_item_calendar:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 171
    new-instance p2, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter$ViewHolder;

    invoke-direct {p2, p1}, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public search(Ljava/lang/String;)I
    .locals 6

    .line 91
    iget-object v0, p0, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter;->mDisplayData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 92
    invoke-static {p1}, Lus/zoom/zrcsdk/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 93
    iget-object p1, p0, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter;->mDisplayData:Ljava/util/List;

    iget-object v0, p0, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter;->mData:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 94
    invoke-direct {p0}, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter;->sortDisplayData()V

    .line 95
    invoke-virtual {p0}, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter;->notifyDataSetChanged()V

    return v1

    .line 98
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter$ListItemWrapper;

    .line 99
    invoke-virtual {v2}, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter$ListItemWrapper;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    .line 100
    invoke-virtual {v2}, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter$ListItemWrapper;->getDisplayEmail()Ljava/lang/String;

    move-result-object v4

    .line 101
    invoke-static {v3}, Lus/zoom/zrcsdk/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 102
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 103
    iget-object v3, p0, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter;->mDisplayData:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 104
    :cond_2
    invoke-static {v4}, Lus/zoom/zrcsdk/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 105
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 106
    iget-object v3, p0, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter;->mDisplayData:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 110
    :cond_3
    iget-object p1, p0, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter;->mDisplayData:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x0

    if-lez p1, :cond_4

    const/4 p1, 0x1

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    :goto_1
    if-nez p1, :cond_5

    .line 112
    iget-object v2, p0, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter;->mDisplayData:Ljava/util/List;

    iget-object v3, p0, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter;->mData:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 114
    :cond_5
    invoke-direct {p0}, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter;->sortDisplayData()V

    .line 115
    invoke-virtual {p0}, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter;->notifyDataSetChanged()V

    if-eqz p1, :cond_6

    goto :goto_2

    :cond_6
    const/4 v0, -0x1

    :goto_2
    return v0
.end method

.method selectCalendarResource(Lus/zoom/zrcsdk/model/ZRCCalendarResourceItem;)V
    .locals 3

    .line 129
    iget-object v0, p0, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter;->mDisplayData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter$ListItemWrapper;

    .line 130
    invoke-virtual {v1}, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter$ListItemWrapper;->getCalendarResource()Lus/zoom/zrcsdk/model/ZRCCalendarResourceItem;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 131
    invoke-virtual {p0, v1}, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter;->select(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method selectCalendarService(Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;)V
    .locals 3

    .line 121
    iget-object v0, p0, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter;->mDisplayData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter$ListItemWrapper;

    .line 122
    invoke-virtual {v1}, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter$ListItemWrapper;->getCalendarService()Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 123
    invoke-virtual {p0, v1}, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter;->select(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method setCalendarResourceList(Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;)V
    .locals 3

    .line 63
    iput-object p1, p0, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter;->mSelectedCalendarService:Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;

    .line 64
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;->getResources()Ljava/util/List;

    move-result-object p1

    .line 65
    iget-object v0, p0, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    .line 67
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lus/zoom/zrcsdk/model/ZRCCalendarResourceItem;

    .line 68
    iget-object v1, p0, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter;->mData:Ljava/util/List;

    new-instance v2, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter$ListItemWrapper;

    invoke-direct {v2, p0, v0}, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter$ListItemWrapper;-><init>(Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter;Lus/zoom/zrcsdk/model/ZRCCalendarResourceItem;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 71
    :cond_0
    iget-object p1, p0, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter;->mDisplayData:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 72
    iget-object p1, p0, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter;->mDisplayData:Ljava/util/List;

    iget-object v0, p0, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter;->mData:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 73
    invoke-direct {p0}, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter;->sortDisplayData()V

    .line 74
    invoke-virtual {p0}, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter;->clearSelection()V

    .line 75
    invoke-virtual {p0}, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method setCalendarServiceList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;",
            ">;)V"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_1

    .line 49
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;

    .line 50
    iget-object v1, p0, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter;->mCalendarHelper:Lus/zoom/zrc/login/LoginCalendarHelper;

    invoke-virtual {v1, v0}, Lus/zoom/zrc/login/LoginCalendarHelper;->isServiceCanDisplay(Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    iget-object v1, p0, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter;->mData:Ljava/util/List;

    new-instance v2, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter$ListItemWrapper;

    invoke-direct {v2, p0, v0}, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter$ListItemWrapper;-><init>(Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter;Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 55
    :cond_1
    iget-object p1, p0, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter;->mDisplayData:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 56
    iget-object p1, p0, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter;->mDisplayData:Ljava/util/List;

    iget-object v0, p0, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter;->mData:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 57
    invoke-direct {p0}, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter;->sortDisplayData()V

    .line 58
    invoke-virtual {p0}, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter;->clearSelection()V

    .line 59
    invoke-virtual {p0}, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter;->notifyDataSetChanged()V

    return-void
.end method
