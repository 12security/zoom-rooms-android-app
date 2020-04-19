.class public Lus/zoom/zrc/settings/NetworkDeviceAdapter;
.super Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter;
.source "NetworkDeviceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrc/settings/NetworkDeviceAdapter$ViewHolder;,
        Lus/zoom/zrc/settings/NetworkDeviceAdapter$OnIdentityClickListener;,
        Lus/zoom/zrc/settings/NetworkDeviceAdapter$OnItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter<",
        "Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;",
        "Lus/zoom/zrc/settings/NetworkDeviceAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private devices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private displayList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private identityClickListener:Lus/zoom/zrc/settings/NetworkDeviceAdapter$OnIdentityClickListener;

.field private inflater:Landroid/view/LayoutInflater;

.field private itemClickListener:Lus/zoom/zrc/settings/NetworkDeviceAdapter$OnItemClickListener;

.field private keyword:Ljava/lang/String;

.field private maxSelectedCount:I

.field private selectedCount:I


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;",
            ">;I)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/settings/NetworkDeviceAdapter;->displayList:Ljava/util/List;

    .line 43
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/settings/NetworkDeviceAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 44
    invoke-direct {p0, p2}, Lus/zoom/zrc/settings/NetworkDeviceAdapter;->setDevicesList(Ljava/util/List;)V

    .line 45
    iput p3, p0, Lus/zoom/zrc/settings/NetworkDeviceAdapter;->maxSelectedCount:I

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/settings/NetworkDeviceAdapter;)Lus/zoom/zrc/settings/NetworkDeviceAdapter$OnIdentityClickListener;
    .locals 0

    .line 23
    iget-object p0, p0, Lus/zoom/zrc/settings/NetworkDeviceAdapter;->identityClickListener:Lus/zoom/zrc/settings/NetworkDeviceAdapter$OnIdentityClickListener;

    return-object p0
.end method

.method static synthetic access$100(Lus/zoom/zrc/settings/NetworkDeviceAdapter;ZLandroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lus/zoom/zrc/settings/NetworkDeviceAdapter;->getSelectedStr(ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lus/zoom/zrc/settings/NetworkDeviceAdapter;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lus/zoom/zrc/settings/NetworkDeviceAdapter;->updateSelectedCount()V

    return-void
.end method

.method static synthetic access$300(Lus/zoom/zrc/settings/NetworkDeviceAdapter;)Lus/zoom/zrc/settings/NetworkDeviceAdapter$OnItemClickListener;
    .locals 0

    .line 23
    iget-object p0, p0, Lus/zoom/zrc/settings/NetworkDeviceAdapter;->itemClickListener:Lus/zoom/zrc/settings/NetworkDeviceAdapter$OnItemClickListener;

    return-object p0
.end method

.method private getDeviceState(ILandroid/content/Context;)Ljava/lang/String;
    .locals 1

    if-nez p2, :cond_0

    const-string p1, ""

    return-object p1

    .line 203
    :cond_0
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    if-nez p1, :cond_1

    const-string p1, ""

    return-object p1

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 207
    sget p1, Lus/zoom/zrcbox/R$string;->available:I

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 209
    sget p1, Lus/zoom/zrcbox/R$string;->connecting:I

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    .line 211
    sget p1, Lus/zoom/zrcbox/R$string;->connected:I

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    const/4 v0, 0x4

    if-ne p1, v0, :cond_5

    .line 213
    sget p1, Lus/zoom/zrcbox/R$string;->disconnected:I

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5
    const/4 v0, 0x5

    if-ne p1, v0, :cond_6

    .line 215
    sget p1, Lus/zoom/zrcbox/R$string;->error:I

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_6
    const/4 v0, 0x6

    if-ne p1, v0, :cond_7

    .line 217
    sget p1, Lus/zoom/zrcbox/R$string;->occupied:I

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_7
    const-string p1, ""

    return-object p1
.end method

.method private getSelectedStr(ZLandroid/content/Context;)Ljava/lang/String;
    .locals 0

    if-nez p2, :cond_0

    const-string p1, ""

    return-object p1

    .line 226
    :cond_0
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    if-eqz p1, :cond_1

    .line 228
    sget p1, Lus/zoom/zrcbox/R$string;->selected:I

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 230
    :cond_1
    sget p1, Lus/zoom/zrcbox/R$string;->unselected:I

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private isItemDisable(Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;)Z
    .locals 2

    .line 196
    iget v0, p0, Lus/zoom/zrc/settings/NetworkDeviceAdapter;->selectedCount:I

    iget v1, p0, Lus/zoom/zrc/settings/NetworkDeviceAdapter;->maxSelectedCount:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;->isUnknownState()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private setDevicesList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 52
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/settings/NetworkDeviceAdapter;->displayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 53
    iget-object v0, p0, Lus/zoom/zrc/settings/NetworkDeviceAdapter;->displayList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 54
    iput-object p1, p0, Lus/zoom/zrc/settings/NetworkDeviceAdapter;->devices:Ljava/util/List;

    .line 55
    invoke-direct {p0}, Lus/zoom/zrc/settings/NetworkDeviceAdapter;->updateSelectedCount()V

    return-void
.end method

.method private updateSelectedCount()V
    .locals 2

    const/4 v0, 0x0

    .line 235
    iput v0, p0, Lus/zoom/zrc/settings/NetworkDeviceAdapter;->selectedCount:I

    .line 236
    :goto_0
    iget-object v1, p0, Lus/zoom/zrc/settings/NetworkDeviceAdapter;->devices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 237
    iget-object v1, p0, Lus/zoom/zrc/settings/NetworkDeviceAdapter;->devices:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 240
    :cond_0
    iget-object v1, p0, Lus/zoom/zrc/settings/NetworkDeviceAdapter;->devices:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;->isSelected()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lus/zoom/zrc/settings/NetworkDeviceAdapter;->devices:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;->isManuallyChecked()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lus/zoom/zrc/settings/NetworkDeviceAdapter;->devices:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;->isManuallyChecked()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 241
    :cond_1
    iget v1, p0, Lus/zoom/zrc/settings/NetworkDeviceAdapter;->selectedCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lus/zoom/zrc/settings/NetworkDeviceAdapter;->selectedCount:I

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 244
    :cond_3
    invoke-virtual {p0}, Lus/zoom/zrc/settings/NetworkDeviceAdapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 165
    iget-object v0, p0, Lus/zoom/zrc/settings/NetworkDeviceAdapter;->displayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected bridge synthetic getListItem(I)Ljava/lang/Object;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lus/zoom/zrc/settings/NetworkDeviceAdapter;->getListItem(I)Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;

    move-result-object p1

    return-object p1
.end method

.method protected getListItem(I)Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;
    .locals 1

    .line 74
    iget-object v0, p0, Lus/zoom/zrc/settings/NetworkDeviceAdapter;->displayList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;

    return-object p1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 23
    check-cast p1, Lus/zoom/zrc/settings/NetworkDeviceAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lus/zoom/zrc/settings/NetworkDeviceAdapter;->onBindViewHolder(Lus/zoom/zrc/settings/NetworkDeviceAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lus/zoom/zrc/settings/NetworkDeviceAdapter$ViewHolder;I)V
    .locals 11
    .param p1    # Lus/zoom/zrc/settings/NetworkDeviceAdapter$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 86
    iget-object v0, p0, Lus/zoom/zrc/settings/NetworkDeviceAdapter;->devices:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 89
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/settings/NetworkDeviceAdapter;->displayList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;

    .line 90
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    .line 91
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;->getState()I

    move-result v2

    iget-object v3, p1, Lus/zoom/zrc/settings/NetworkDeviceAdapter$ViewHolder;->deviceState:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lus/zoom/zrc/settings/NetworkDeviceAdapter;->getDeviceState(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 92
    iget-object v3, p1, Lus/zoom/zrc/settings/NetworkDeviceAdapter$ViewHolder;->deviceName:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;->isManuallyChecked()Ljava/lang/Boolean;

    move-result-object v3

    if-nez v3, :cond_1

    .line 94
    iget-object v3, p1, Lus/zoom/zrc/settings/NetworkDeviceAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;->isSelected()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 96
    :cond_1
    iget-object v3, p1, Lus/zoom/zrc/settings/NetworkDeviceAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;->isManuallyChecked()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 98
    :goto_0
    iget-object v3, p1, Lus/zoom/zrc/settings/NetworkDeviceAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 99
    iget-object v3, p1, Lus/zoom/zrc/settings/NetworkDeviceAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Lus/zoom/zrc/settings/NetworkDeviceAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v6}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v6

    iget-object v7, p1, Lus/zoom/zrc/settings/NetworkDeviceAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v7}, Landroid/widget/CheckBox;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lus/zoom/zrc/settings/NetworkDeviceAdapter;->getSelectedStr(ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/CheckBox;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v3, p1, Lus/zoom/zrc/settings/NetworkDeviceAdapter$ViewHolder;->light:Landroid/view/View;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;->isIdentifiable()Z

    move-result v5

    const/16 v6, 0x8

    if-eqz v5, :cond_2

    const/4 v5, 0x0

    goto :goto_1

    :cond_2
    const/16 v5, 0x8

    :goto_1
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 101
    iget-object v3, p1, Lus/zoom/zrc/settings/NetworkDeviceAdapter$ViewHolder;->light:Landroid/view/View;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p1, Lus/zoom/zrc/settings/NetworkDeviceAdapter$ViewHolder;->light:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lus/zoom/zrcbox/R$string;->identify:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v3, p1, Lus/zoom/zrc/settings/NetworkDeviceAdapter$ViewHolder;->light:Landroid/view/View;

    new-instance v5, Lus/zoom/zrc/settings/NetworkDeviceAdapter$1;

    invoke-direct {v5, p0, p2, v0}, Lus/zoom/zrc/settings/NetworkDeviceAdapter$1;-><init>(Lus/zoom/zrc/settings/NetworkDeviceAdapter;ILus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    invoke-direct {p0, v0}, Lus/zoom/zrc/settings/NetworkDeviceAdapter;->isItemDisable(Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;)Z

    move-result v3

    const/4 v5, 0x1

    if-eqz v3, :cond_3

    .line 112
    iget-object v3, p1, Lus/zoom/zrc/settings/NetworkDeviceAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v3, v4}, Lus/zoom/zrc/utils/ZRCUIUtils;->setChildViewEnabled(Landroid/view/View;Z)V

    goto :goto_2

    .line 114
    :cond_3
    iget-object v3, p1, Lus/zoom/zrc/settings/NetworkDeviceAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v3, v5}, Lus/zoom/zrc/utils/ZRCUIUtils;->setChildViewEnabled(Landroid/view/View;Z)V

    .line 116
    :goto_2
    iget-object v3, p1, Lus/zoom/zrc/settings/NetworkDeviceAdapter$ViewHolder;->light:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 117
    iget-object v3, p1, Lus/zoom/zrc/settings/NetworkDeviceAdapter$ViewHolder;->deviceState:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 118
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;->getState()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_4

    invoke-direct {p0, v0}, Lus/zoom/zrc/settings/NetworkDeviceAdapter;->isItemDisable(Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 119
    iget-object v7, p1, Lus/zoom/zrc/settings/NetworkDeviceAdapter$ViewHolder;->deviceState:Landroid/widget/TextView;

    sget v8, Lus/zoom/zrcbox/R$color;->network_state_connected:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    .line 121
    :cond_4
    iget-object v7, p1, Lus/zoom/zrc/settings/NetworkDeviceAdapter$ViewHolder;->deviceState:Landroid/widget/TextView;

    sget v8, Lus/zoom/zrcbox/R$color;->network_device_state:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 123
    :goto_3
    iget-object v7, p1, Lus/zoom/zrc/settings/NetworkDeviceAdapter$ViewHolder;->itemView:Landroid/view/View;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p1, Lus/zoom/zrc/settings/NetworkDeviceAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v9}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget v10, Lus/zoom/zrcbox/R$string;->selected:I

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :cond_5
    const-string v3, ""

    :goto_4
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v1, p1, Lus/zoom/zrc/settings/NetworkDeviceAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setClickable(Z)V

    .line 125
    iget-object v1, p1, Lus/zoom/zrc/settings/NetworkDeviceAdapter$ViewHolder;->checkBoxParent:Landroid/view/View;

    new-instance v3, Lus/zoom/zrc/settings/NetworkDeviceAdapter$2;

    invoke-direct {v3, p0, v0, p1, p2}, Lus/zoom/zrc/settings/NetworkDeviceAdapter$2;-><init>(Lus/zoom/zrc/settings/NetworkDeviceAdapter;Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;Lus/zoom/zrc/settings/NetworkDeviceAdapter$ViewHolder;I)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;->getState()I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_6

    .line 144
    iget-object p2, p1, Lus/zoom/zrc/settings/NetworkDeviceAdapter$ViewHolder;->deviceState:Landroid/widget/TextView;

    invoke-virtual {p2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 145
    iget-object p2, p1, Lus/zoom/zrc/settings/NetworkDeviceAdapter$ViewHolder;->connectingStateView:Landroid/view/View;

    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 146
    iget-object p1, p1, Lus/zoom/zrc/settings/NetworkDeviceAdapter$ViewHolder;->checkBoxParent:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->setClickable(Z)V

    goto :goto_5

    .line 148
    :cond_6
    iget-object p2, p1, Lus/zoom/zrc/settings/NetworkDeviceAdapter$ViewHolder;->deviceState:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    iget-object p2, p1, Lus/zoom/zrc/settings/NetworkDeviceAdapter$ViewHolder;->deviceState:Landroid/widget/TextView;

    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 150
    iget-object p2, p1, Lus/zoom/zrc/settings/NetworkDeviceAdapter$ViewHolder;->connectingStateView:Landroid/view/View;

    invoke-virtual {p2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 151
    iget-object p1, p1, Lus/zoom/zrc/settings/NetworkDeviceAdapter$ViewHolder;->checkBoxParent:Landroid/view/View;

    invoke-virtual {p1, v5}, Landroid/view/View;->setClickable(Z)V

    :goto_5
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 23
    invoke-virtual {p0, p1, p2}, Lus/zoom/zrc/settings/NetworkDeviceAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lus/zoom/zrc/settings/NetworkDeviceAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lus/zoom/zrc/settings/NetworkDeviceAdapter$ViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 80
    iget-object p2, p0, Lus/zoom/zrc/settings/NetworkDeviceAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v0, Lus/zoom/zrcbox/R$layout;->network_device_layout:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 81
    new-instance p2, Lus/zoom/zrc/settings/NetworkDeviceAdapter$ViewHolder;

    invoke-direct {p2, p1}, Lus/zoom/zrc/settings/NetworkDeviceAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public search(Ljava/lang/String;)I
    .locals 4

    .line 170
    iput-object p1, p0, Lus/zoom/zrc/settings/NetworkDeviceAdapter;->keyword:Ljava/lang/String;

    .line 171
    iget-object v0, p0, Lus/zoom/zrc/settings/NetworkDeviceAdapter;->devices:Ljava/util/List;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 174
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/settings/NetworkDeviceAdapter;->displayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 175
    invoke-static {p1}, Lus/zoom/zrcsdk/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    iget-object p1, p0, Lus/zoom/zrc/settings/NetworkDeviceAdapter;->displayList:Ljava/util/List;

    iget-object v0, p0, Lus/zoom/zrc/settings/NetworkDeviceAdapter;->devices:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 177
    invoke-virtual {p0}, Lus/zoom/zrc/settings/NetworkDeviceAdapter;->notifyDataSetChanged()V

    return v1

    .line 180
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 181
    iget-object v0, p0, Lus/zoom/zrc/settings/NetworkDeviceAdapter;->devices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;

    .line 182
    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;->getDeviceName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    const-string v3, ""

    .line 184
    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 185
    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 186
    iget-object v3, p0, Lus/zoom/zrc/settings/NetworkDeviceAdapter;->displayList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 189
    :cond_4
    iget-object p1, p0, Lus/zoom/zrc/settings/NetworkDeviceAdapter;->displayList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x0

    if-lez p1, :cond_5

    const/4 p1, 0x1

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    .line 190
    :goto_1
    invoke-virtual {p0}, Lus/zoom/zrc/settings/NetworkDeviceAdapter;->notifyDataSetChanged()V

    if-eqz p1, :cond_6

    goto :goto_2

    :cond_6
    const/4 v0, -0x1

    :goto_2
    return v0
.end method

.method setOnIdentityClickListener(Lus/zoom/zrc/settings/NetworkDeviceAdapter$OnIdentityClickListener;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lus/zoom/zrc/settings/NetworkDeviceAdapter;->identityClickListener:Lus/zoom/zrc/settings/NetworkDeviceAdapter$OnIdentityClickListener;

    return-void
.end method

.method public setOnItemClickListener(Lus/zoom/zrc/settings/NetworkDeviceAdapter$OnItemClickListener;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lus/zoom/zrc/settings/NetworkDeviceAdapter;->itemClickListener:Lus/zoom/zrc/settings/NetworkDeviceAdapter$OnItemClickListener;

    return-void
.end method

.method updateDevices(Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/networkdevice/ZRCNetworkAudioDeviceInfo;",
            ">;Z)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 62
    :cond_0
    iput-object p1, p0, Lus/zoom/zrc/settings/NetworkDeviceAdapter;->devices:Ljava/util/List;

    if-eqz p2, :cond_1

    .line 63
    iget-object p2, p0, Lus/zoom/zrc/settings/NetworkDeviceAdapter;->keyword:Ljava/lang/String;

    invoke-static {p2}, Lus/zoom/zrcsdk/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 64
    iget-object p1, p0, Lus/zoom/zrc/settings/NetworkDeviceAdapter;->keyword:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lus/zoom/zrc/settings/NetworkDeviceAdapter;->search(Ljava/lang/String;)I

    goto :goto_0

    .line 66
    :cond_1
    iget-object p2, p0, Lus/zoom/zrc/settings/NetworkDeviceAdapter;->displayList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 67
    iget-object p2, p0, Lus/zoom/zrc/settings/NetworkDeviceAdapter;->displayList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 69
    :goto_0
    invoke-direct {p0}, Lus/zoom/zrc/settings/NetworkDeviceAdapter;->updateSelectedCount()V

    return-void
.end method
