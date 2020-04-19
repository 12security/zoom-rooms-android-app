.class public Lus/zoom/zrc/view/ParticipantPopupView;
.super Landroid/widget/FrameLayout;
.source "ParticipantPopupView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrc/view/ParticipantPopupView$OnClickListener;,
        Lus/zoom/zrc/view/ParticipantPopupView$OnDismissListener;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private adapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mListView:Landroid/widget/ListView;

.field private mParticipant:Lus/zoom/zrcsdk/model/ZRCParticipant;

.field private onClickListener:Lus/zoom/zrc/view/ParticipantPopupView$OnClickListener;

.field private onDismissListener:Lus/zoom/zrc/view/ParticipantPopupView$OnDismissListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 125
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-string v0, "ParticipantPopupView"

    .line 43
    iput-object v0, p0, Lus/zoom/zrc/view/ParticipantPopupView;->TAG:Ljava/lang/String;

    .line 126
    invoke-virtual {p0, p1}, Lus/zoom/zrc/view/ParticipantPopupView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 119
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p2, "ParticipantPopupView"

    .line 43
    iput-object p2, p0, Lus/zoom/zrc/view/ParticipantPopupView;->TAG:Ljava/lang/String;

    .line 120
    invoke-virtual {p0, p1}, Lus/zoom/zrc/view/ParticipantPopupView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 114
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p2, "ParticipantPopupView"

    .line 43
    iput-object p2, p0, Lus/zoom/zrc/view/ParticipantPopupView;->TAG:Ljava/lang/String;

    .line 115
    invoke-virtual {p0, p1}, Lus/zoom/zrc/view/ParticipantPopupView;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/view/ParticipantPopupView;)Lus/zoom/zrc/view/ParticipantPopupView$OnClickListener;
    .locals 0

    .line 31
    iget-object p0, p0, Lus/zoom/zrc/view/ParticipantPopupView;->onClickListener:Lus/zoom/zrc/view/ParticipantPopupView$OnClickListener;

    return-object p0
.end method

.method static synthetic access$100(Lus/zoom/zrc/view/ParticipantPopupView;)Lus/zoom/zrcsdk/model/ZRCParticipant;
    .locals 0

    .line 31
    iget-object p0, p0, Lus/zoom/zrc/view/ParticipantPopupView;->mParticipant:Lus/zoom/zrcsdk/model/ZRCParticipant;

    return-object p0
.end method

.method private dismiss()V
    .locals 1

    .line 273
    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantPopupView;->onDismissListener:Lus/zoom/zrc/view/ParticipantPopupView$OnDismissListener;

    if-eqz v0, :cond_0

    .line 274
    invoke-interface {v0}, Lus/zoom/zrc/view/ParticipantPopupView$OnDismissListener;->dismiss()V

    :cond_0
    return-void
.end method

.method private makeCoHost()V
    .locals 6

    .line 254
    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantPopupView;->mParticipant:Lus/zoom/zrcsdk/model/ZRCParticipant;

    if-nez v0, :cond_0

    return-void

    .line 257
    :cond_0
    new-instance v0, Lus/zoom/zrc/view/MakeCohostDialogFragment;

    invoke-direct {v0}, Lus/zoom/zrc/view/MakeCohostDialogFragment;-><init>()V

    .line 258
    iget-object v1, p0, Lus/zoom/zrc/view/ParticipantPopupView;->mContext:Landroid/content/Context;

    sget v2, Lus/zoom/zrcbox/R$string;->confirm_assign_cohost:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lus/zoom/zrc/view/ParticipantPopupView;->mParticipant:Lus/zoom/zrcsdk/model/ZRCParticipant;

    invoke-virtual {v5}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getUserName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lus/zoom/zrc/view/MakeCohostDialogFragment;->setTitle(Ljava/lang/String;)V

    .line 259
    iget-object v1, p0, Lus/zoom/zrc/view/ParticipantPopupView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lus/zoom/zrcbox/R$string;->ok:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lus/zoom/zrc/view/ParticipantPopupView$1;

    invoke-direct {v2, p0}, Lus/zoom/zrc/view/ParticipantPopupView$1;-><init>(Lus/zoom/zrc/view/ParticipantPopupView;)V

    invoke-virtual {v0, v1, v2}, Lus/zoom/zrc/view/MakeCohostDialogFragment;->setPositiveButton(Ljava/lang/String;Lus/zoom/zrc/view/MakeCohostDialogFragment$OnClickListener;)V

    .line 267
    iget-object v1, p0, Lus/zoom/zrc/view/ParticipantPopupView;->mParticipant:Lus/zoom/zrcsdk/model/ZRCParticipant;

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lus/zoom/zrc/view/MakeCohostDialogFragment;->setUserId(I)V

    .line 268
    iget-object v1, p0, Lus/zoom/zrc/view/ParticipantPopupView;->mContext:Landroid/content/Context;

    check-cast v1, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lus/zoom/zrc/view/MakeCohostDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private promptChangeHost()V
    .locals 4

    .line 245
    new-instance v0, Lus/zoom/zrc/view/HostChangeDialogFragment;

    invoke-direct {v0}, Lus/zoom/zrc/view/HostChangeDialogFragment;-><init>()V

    .line 246
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "participant"

    .line 247
    iget-object v3, p0, Lus/zoom/zrc/view/ParticipantPopupView;->mParticipant:Lus/zoom/zrcsdk/model/ZRCParticipant;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 248
    invoke-virtual {v0, v1}, Lus/zoom/zrc/view/HostChangeDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 249
    iget-object v1, p0, Lus/zoom/zrc/view/ParticipantPopupView;->onClickListener:Lus/zoom/zrc/view/ParticipantPopupView$OnClickListener;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/view/HostChangeDialogFragment;->setOnClickListener(Lus/zoom/zrc/view/ParticipantPopupView$OnClickListener;)V

    .line 250
    iget-object v1, p0, Lus/zoom/zrc/view/ParticipantPopupView;->mContext:Landroid/content/Context;

    check-cast v1, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lus/zoom/zrc/view/HostChangeDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private updateAdapterDataSet()V
    .locals 3

    .line 64
    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantPopupView;->mParticipant:Lus/zoom/zrcsdk/model/ZRCParticipant;

    if-eqz v0, :cond_2

    .line 65
    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantPopupView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;->geInstance(Landroid/content/Context;)Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/view/ParticipantPopupView;->data:Ljava/util/List;

    iget-object v2, p0, Lus/zoom/zrc/view/ParticipantPopupView;->mParticipant:Lus/zoom/zrcsdk/model/ZRCParticipant;

    invoke-virtual {v0, v1, v2}, Lus/zoom/zrc/utils/ZRCParticipantContextMenuManager;->setData(Ljava/util/List;Lus/zoom/zrcsdk/model/ZRCParticipant;)Ljava/util/List;

    .line 66
    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantPopupView;->data:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 70
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantPopupView;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 67
    :cond_1
    :goto_0
    invoke-direct {p0}, Lus/zoom/zrc/view/ParticipantPopupView;->dismiss()V

    return-void

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 3

    .line 130
    iput-object p1, p0, Lus/zoom/zrc/view/ParticipantPopupView;->mContext:Landroid/content/Context;

    .line 131
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 132
    sget v1, Lus/zoom/zrcbox/R$layout;->participant_popup_view:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 133
    sget v1, Lus/zoom/zrcbox/R$id;->list:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lus/zoom/zrc/view/ParticipantPopupView;->mListView:Landroid/widget/ListView;

    .line 134
    invoke-virtual {p0}, Lus/zoom/zrc/view/ParticipantPopupView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/androidlib/util/UIUtil;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantPopupView;->mListView:Landroid/widget/ListView;

    sget v1, Lus/zoom/zrcbox/R$drawable;->participants_list_pop_up_port_bg:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setBackgroundResource(I)V

    .line 137
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/view/ParticipantPopupView;->data:Ljava/util/List;

    .line 138
    new-instance v0, Lus/zoom/zrc/view/adapter/ParticipantContextMenuAdapter;

    sget v1, Lus/zoom/zrcbox/R$layout;->list_view_item_textview:I

    iget-object v2, p0, Lus/zoom/zrc/view/ParticipantPopupView;->data:Ljava/util/List;

    invoke-direct {v0, p1, v1, v2}, Lus/zoom/zrc/view/adapter/ParticipantContextMenuAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lus/zoom/zrc/view/ParticipantPopupView;->adapter:Landroid/widget/ArrayAdapter;

    .line 139
    iget-object p1, p0, Lus/zoom/zrc/view/ParticipantPopupView;->mListView:Landroid/widget/ListView;

    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantPopupView;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 140
    iget-object p1, p0, Lus/zoom/zrc/view/ParticipantPopupView;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 150
    iget-object p1, p0, Lus/zoom/zrc/view/ParticipantPopupView;->data:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object p2, p0, Lus/zoom/zrc/view/ParticipantPopupView;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p4, Lus/zoom/zrcbox/R$string;->unmute:I

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 151
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/ZRCSdk;->getConfApp()Lus/zoom/zrcsdk/ConfApp;

    move-result-object p1

    iget-object p3, p0, Lus/zoom/zrc/view/ParticipantPopupView;->mParticipant:Lus/zoom/zrcsdk/model/ZRCParticipant;

    invoke-virtual {p3}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getUserId()I

    move-result p3

    invoke-virtual {p1, p3, p2}, Lus/zoom/zrcsdk/ConfApp;->muteUserAudio(IZ)I

    .line 152
    iget-object p1, p0, Lus/zoom/zrc/view/ParticipantPopupView;->onClickListener:Lus/zoom/zrc/view/ParticipantPopupView$OnClickListener;

    if-eqz p1, :cond_18

    .line 153
    invoke-interface {p1, p2}, Lus/zoom/zrc/view/ParticipantPopupView$OnClickListener;->OnClickMuteUserAudio(Z)V

    goto/16 :goto_1

    .line 154
    :cond_0
    iget-object p1, p0, Lus/zoom/zrc/view/ParticipantPopupView;->data:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object p4, p0, Lus/zoom/zrc/view/ParticipantPopupView;->mContext:Landroid/content/Context;

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget p5, Lus/zoom/zrcbox/R$string;->mute:I

    invoke-virtual {p4, p5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p4, 0x1

    if-eqz p1, :cond_1

    .line 155
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/ZRCSdk;->getConfApp()Lus/zoom/zrcsdk/ConfApp;

    move-result-object p1

    iget-object p2, p0, Lus/zoom/zrc/view/ParticipantPopupView;->mParticipant:Lus/zoom/zrcsdk/model/ZRCParticipant;

    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getUserId()I

    move-result p2

    invoke-virtual {p1, p2, p4}, Lus/zoom/zrcsdk/ConfApp;->muteUserAudio(IZ)I

    .line 156
    iget-object p1, p0, Lus/zoom/zrc/view/ParticipantPopupView;->onClickListener:Lus/zoom/zrc/view/ParticipantPopupView$OnClickListener;

    if-eqz p1, :cond_18

    .line 157
    invoke-interface {p1, p4}, Lus/zoom/zrc/view/ParticipantPopupView$OnClickListener;->OnClickMuteUserAudio(Z)V

    goto/16 :goto_1

    .line 158
    :cond_1
    iget-object p1, p0, Lus/zoom/zrc/view/ParticipantPopupView;->data:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object p5, p0, Lus/zoom/zrc/view/ParticipantPopupView;->mContext:Landroid/content/Context;

    invoke-virtual {p5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    sget v0, Lus/zoom/zrcbox/R$string;->forbid_recording:I

    invoke-virtual {p5, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 159
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/ZRCSdk;->getConfApp()Lus/zoom/zrcsdk/ConfApp;

    move-result-object p1

    iget-object p3, p0, Lus/zoom/zrc/view/ParticipantPopupView;->mParticipant:Lus/zoom/zrcsdk/model/ZRCParticipant;

    invoke-virtual {p3}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getUserId()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lus/zoom/zrcsdk/ConfApp;->allowRecording(ZI)I

    .line 160
    iget-object p1, p0, Lus/zoom/zrc/view/ParticipantPopupView;->onClickListener:Lus/zoom/zrc/view/ParticipantPopupView$OnClickListener;

    if-eqz p1, :cond_18

    .line 161
    invoke-interface {p1, p2}, Lus/zoom/zrc/view/ParticipantPopupView$OnClickListener;->OnClickAllowRecording(Z)V

    goto/16 :goto_1

    .line 162
    :cond_2
    iget-object p1, p0, Lus/zoom/zrc/view/ParticipantPopupView;->data:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object p5, p0, Lus/zoom/zrc/view/ParticipantPopupView;->mContext:Landroid/content/Context;

    invoke-virtual {p5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    sget v0, Lus/zoom/zrcbox/R$string;->allow_recording:I

    invoke-virtual {p5, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 163
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/ZRCSdk;->getConfApp()Lus/zoom/zrcsdk/ConfApp;

    move-result-object p1

    iget-object p2, p0, Lus/zoom/zrc/view/ParticipantPopupView;->mParticipant:Lus/zoom/zrcsdk/model/ZRCParticipant;

    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getUserId()I

    move-result p2

    invoke-virtual {p1, p4, p2}, Lus/zoom/zrcsdk/ConfApp;->allowRecording(ZI)I

    .line 164
    iget-object p1, p0, Lus/zoom/zrc/view/ParticipantPopupView;->onClickListener:Lus/zoom/zrc/view/ParticipantPopupView$OnClickListener;

    if-eqz p1, :cond_18

    .line 165
    invoke-interface {p1, p4}, Lus/zoom/zrc/view/ParticipantPopupView$OnClickListener;->OnClickAllowRecording(Z)V

    goto/16 :goto_1

    .line 166
    :cond_3
    iget-object p1, p0, Lus/zoom/zrc/view/ParticipantPopupView;->data:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object p5, p0, Lus/zoom/zrc/view/ParticipantPopupView;->mContext:Landroid/content/Context;

    invoke-virtual {p5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    sget v0, Lus/zoom/zrcbox/R$string;->make_host:I

    invoke-virtual {p5, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 167
    invoke-direct {p0}, Lus/zoom/zrc/view/ParticipantPopupView;->promptChangeHost()V

    .line 168
    iget-object p1, p0, Lus/zoom/zrc/view/ParticipantPopupView;->onClickListener:Lus/zoom/zrc/view/ParticipantPopupView$OnClickListener;

    if-eqz p1, :cond_18

    .line 169
    invoke-interface {p1}, Lus/zoom/zrc/view/ParticipantPopupView$OnClickListener;->OnClickChangeHost()V

    goto/16 :goto_1

    .line 170
    :cond_4
    iget-object p1, p0, Lus/zoom/zrc/view/ParticipantPopupView;->data:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object p5, p0, Lus/zoom/zrc/view/ParticipantPopupView;->mContext:Landroid/content/Context;

    invoke-virtual {p5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    sget v0, Lus/zoom/zrcbox/R$string;->request_camera_control:I

    invoke-virtual {p5, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 171
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/ZRCSdk;->getConfApp()Lus/zoom/zrcsdk/ConfApp;

    move-result-object p1

    iget-object p3, p0, Lus/zoom/zrc/view/ParticipantPopupView;->mParticipant:Lus/zoom/zrcsdk/model/ZRCParticipant;

    invoke-virtual {p3}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getUserId()I

    move-result p3

    const/4 p5, 0x5

    invoke-virtual {p1, p3, p2, p5, p4}, Lus/zoom/zrcsdk/ConfApp;->farEndCameraControlWith(IIIZ)I

    .line 173
    iget-object p1, p0, Lus/zoom/zrc/view/ParticipantPopupView;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "farEndCameraControlWith:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lus/zoom/zrc/view/ParticipantPopupView;->mParticipant:Lus/zoom/zrcsdk/model/ZRCParticipant;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getUserId()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p5, ","

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, p3, p2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 175
    iget-object p1, p0, Lus/zoom/zrc/view/ParticipantPopupView;->onClickListener:Lus/zoom/zrc/view/ParticipantPopupView$OnClickListener;

    if-eqz p1, :cond_18

    .line 176
    invoke-interface {p1}, Lus/zoom/zrc/view/ParticipantPopupView$OnClickListener;->OnClickCameraControl()V

    goto/16 :goto_1

    .line 177
    :cond_5
    iget-object p1, p0, Lus/zoom/zrc/view/ParticipantPopupView;->data:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object p5, p0, Lus/zoom/zrc/view/ParticipantPopupView;->mContext:Landroid/content/Context;

    invoke-virtual {p5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    sget v0, Lus/zoom/zrcbox/R$string;->open_camera_control:I

    invoke-virtual {p5, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 178
    iget-object p1, p0, Lus/zoom/zrc/view/ParticipantPopupView;->TAG:Ljava/lang/String;

    const-string p3, "open_camera_control"

    new-array p5, p2, [Ljava/lang/Object;

    invoke-static {p1, p3, p5}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 179
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/AppModel;->getPinUserManager()Lus/zoom/zrc/model/ZRCPinUserManager;

    move-result-object p1

    .line 180
    invoke-virtual {p1}, Lus/zoom/zrc/model/ZRCPinUserManager;->canBePinnedOnAnyScreen()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 181
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/ZRCSdk;->getConfApp()Lus/zoom/zrcsdk/ConfApp;

    move-result-object p1

    iget-object p3, p0, Lus/zoom/zrc/view/ParticipantPopupView;->mParticipant:Lus/zoom/zrcsdk/model/ZRCParticipant;

    invoke-virtual {p3}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getUserId()I

    move-result p3

    const/4 p5, 0x7

    invoke-virtual {p1, p3, p2, p5, p4}, Lus/zoom/zrcsdk/ConfApp;->farEndCameraControlWith(IIIZ)I

    .line 183
    iget-object p1, p0, Lus/zoom/zrc/view/ParticipantPopupView;->onClickListener:Lus/zoom/zrc/view/ParticipantPopupView$OnClickListener;

    if-eqz p1, :cond_18

    .line 184
    invoke-interface {p1}, Lus/zoom/zrc/view/ParticipantPopupView$OnClickListener;->OnClickOpenCameraControl()V

    goto/16 :goto_1

    .line 186
    :cond_6
    invoke-virtual {p0}, Lus/zoom/zrc/view/ParticipantPopupView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lus/zoom/zrcbox/R$string;->failed_to_open_remote_camera_control:I

    invoke-static {p1, p2, p4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 187
    iget-object p1, p0, Lus/zoom/zrc/view/ParticipantPopupView;->onClickListener:Lus/zoom/zrc/view/ParticipantPopupView$OnClickListener;

    if-eqz p1, :cond_18

    .line 188
    invoke-interface {p1}, Lus/zoom/zrc/view/ParticipantPopupView$OnClickListener;->OnClickCameraControl()V

    goto/16 :goto_1

    .line 191
    :cond_7
    iget-object p1, p0, Lus/zoom/zrc/view/ParticipantPopupView;->data:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object p5, p0, Lus/zoom/zrc/view/ParticipantPopupView;->mContext:Landroid/content/Context;

    invoke-virtual {p5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    sget v0, Lus/zoom/zrcbox/R$string;->giveup_camera_control:I

    invoke-virtual {p5, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 192
    iget-object p1, p0, Lus/zoom/zrc/view/ParticipantPopupView;->TAG:Ljava/lang/String;

    const-string p3, "give_up_camera_control"

    new-array p5, p2, [Ljava/lang/Object;

    invoke-static {p1, p3, p5}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 193
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/ZRCSdk;->getConfApp()Lus/zoom/zrcsdk/ConfApp;

    move-result-object p1

    iget-object p3, p0, Lus/zoom/zrc/view/ParticipantPopupView;->mParticipant:Lus/zoom/zrcsdk/model/ZRCParticipant;

    invoke-virtual {p3}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getUserId()I

    move-result p3

    const/4 p5, 0x6

    invoke-virtual {p1, p3, p2, p5, p4}, Lus/zoom/zrcsdk/ConfApp;->farEndCameraControlWith(IIIZ)I

    .line 195
    iget-object p1, p0, Lus/zoom/zrc/view/ParticipantPopupView;->onClickListener:Lus/zoom/zrc/view/ParticipantPopupView$OnClickListener;

    if-eqz p1, :cond_18

    .line 196
    invoke-interface {p1}, Lus/zoom/zrc/view/ParticipantPopupView$OnClickListener;->OnClickCameraControl()V

    goto/16 :goto_1

    .line 197
    :cond_8
    iget-object p1, p0, Lus/zoom/zrc/view/ParticipantPopupView;->data:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object p5, p0, Lus/zoom/zrc/view/ParticipantPopupView;->mContext:Landroid/content/Context;

    invoke-virtual {p5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    sget v0, Lus/zoom/zrcbox/R$string;->remove:I

    invoke-virtual {p5, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 198
    iget-object p1, p0, Lus/zoom/zrc/view/ParticipantPopupView;->onClickListener:Lus/zoom/zrc/view/ParticipantPopupView$OnClickListener;

    if-eqz p1, :cond_18

    .line 199
    iget-object p2, p0, Lus/zoom/zrc/view/ParticipantPopupView;->mParticipant:Lus/zoom/zrcsdk/model/ZRCParticipant;

    invoke-interface {p1, p2}, Lus/zoom/zrc/view/ParticipantPopupView$OnClickListener;->OnClickRemoveUser(Lus/zoom/zrcsdk/model/ZRCParticipant;)V

    goto/16 :goto_1

    .line 200
    :cond_9
    iget-object p1, p0, Lus/zoom/zrc/view/ParticipantPopupView;->data:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object p5, p0, Lus/zoom/zrc/view/ParticipantPopupView;->mContext:Landroid/content/Context;

    sget v0, Lus/zoom/zrcbox/R$string;->pin:I

    invoke-virtual {p5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 201
    iget-object p1, p0, Lus/zoom/zrc/view/ParticipantPopupView;->onClickListener:Lus/zoom/zrc/view/ParticipantPopupView$OnClickListener;

    if-eqz p1, :cond_18

    iget-object p2, p0, Lus/zoom/zrc/view/ParticipantPopupView;->mParticipant:Lus/zoom/zrcsdk/model/ZRCParticipant;

    invoke-interface {p1, p2}, Lus/zoom/zrc/view/ParticipantPopupView$OnClickListener;->OnClickPinUser(Lus/zoom/zrcsdk/model/ZRCParticipant;)V

    goto/16 :goto_1

    .line 202
    :cond_a
    iget-object p1, p0, Lus/zoom/zrc/view/ParticipantPopupView;->data:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object p5, p0, Lus/zoom/zrc/view/ParticipantPopupView;->mContext:Landroid/content/Context;

    sget v0, Lus/zoom/zrcbox/R$string;->unpin:I

    invoke-virtual {p5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 203
    iget-object p1, p0, Lus/zoom/zrc/view/ParticipantPopupView;->onClickListener:Lus/zoom/zrc/view/ParticipantPopupView$OnClickListener;

    if-eqz p1, :cond_18

    iget-object p2, p0, Lus/zoom/zrc/view/ParticipantPopupView;->mParticipant:Lus/zoom/zrcsdk/model/ZRCParticipant;

    invoke-interface {p1, p2}, Lus/zoom/zrc/view/ParticipantPopupView$OnClickListener;->OnClickUnPinUser(Lus/zoom/zrcsdk/model/ZRCParticipant;)V

    goto/16 :goto_1

    .line 204
    :cond_b
    iget-object p1, p0, Lus/zoom/zrc/view/ParticipantPopupView;->data:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object p5, p0, Lus/zoom/zrc/view/ParticipantPopupView;->mContext:Landroid/content/Context;

    sget v0, Lus/zoom/zrcbox/R$string;->spotlight:I

    invoke-virtual {p5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 205
    iget-object p1, p0, Lus/zoom/zrc/view/ParticipantPopupView;->onClickListener:Lus/zoom/zrc/view/ParticipantPopupView$OnClickListener;

    if-eqz p1, :cond_18

    iget-object p2, p0, Lus/zoom/zrc/view/ParticipantPopupView;->mParticipant:Lus/zoom/zrcsdk/model/ZRCParticipant;

    invoke-interface {p1, p2}, Lus/zoom/zrc/view/ParticipantPopupView$OnClickListener;->OnClickSpolightUser(Lus/zoom/zrcsdk/model/ZRCParticipant;)V

    goto/16 :goto_1

    .line 206
    :cond_c
    iget-object p1, p0, Lus/zoom/zrc/view/ParticipantPopupView;->data:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object p5, p0, Lus/zoom/zrc/view/ParticipantPopupView;->mContext:Landroid/content/Context;

    sget v0, Lus/zoom/zrcbox/R$string;->cancel_spotlight:I

    invoke-virtual {p5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 207
    iget-object p1, p0, Lus/zoom/zrc/view/ParticipantPopupView;->onClickListener:Lus/zoom/zrc/view/ParticipantPopupView$OnClickListener;

    if-eqz p1, :cond_18

    iget-object p2, p0, Lus/zoom/zrc/view/ParticipantPopupView;->mParticipant:Lus/zoom/zrcsdk/model/ZRCParticipant;

    invoke-interface {p1, p2}, Lus/zoom/zrc/view/ParticipantPopupView$OnClickListener;->onCancelSpolightUser(Lus/zoom/zrcsdk/model/ZRCParticipant;)V

    goto/16 :goto_1

    .line 208
    :cond_d
    iget-object p1, p0, Lus/zoom/zrc/view/ParticipantPopupView;->data:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object p5, p0, Lus/zoom/zrc/view/ParticipantPopupView;->mContext:Landroid/content/Context;

    sget v0, Lus/zoom/zrcbox/R$string;->stop_video:I

    invoke-virtual {p5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 209
    iget-object p1, p0, Lus/zoom/zrc/view/ParticipantPopupView;->onClickListener:Lus/zoom/zrc/view/ParticipantPopupView$OnClickListener;

    if-eqz p1, :cond_18

    iget-object p2, p0, Lus/zoom/zrc/view/ParticipantPopupView;->mParticipant:Lus/zoom/zrcsdk/model/ZRCParticipant;

    invoke-interface {p1, p2}, Lus/zoom/zrc/view/ParticipantPopupView$OnClickListener;->onClickMuteUserVideo(Lus/zoom/zrcsdk/model/ZRCParticipant;)V

    goto/16 :goto_1

    .line 210
    :cond_e
    iget-object p1, p0, Lus/zoom/zrc/view/ParticipantPopupView;->data:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object p5, p0, Lus/zoom/zrc/view/ParticipantPopupView;->mContext:Landroid/content/Context;

    sget v0, Lus/zoom/zrcbox/R$string;->start_user_video:I

    invoke-virtual {p5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 211
    iget-object p1, p0, Lus/zoom/zrc/view/ParticipantPopupView;->onClickListener:Lus/zoom/zrc/view/ParticipantPopupView$OnClickListener;

    if-eqz p1, :cond_18

    iget-object p2, p0, Lus/zoom/zrc/view/ParticipantPopupView;->mParticipant:Lus/zoom/zrcsdk/model/ZRCParticipant;

    invoke-interface {p1, p2}, Lus/zoom/zrc/view/ParticipantPopupView$OnClickListener;->onClickOpenUserVideo(Lus/zoom/zrcsdk/model/ZRCParticipant;)V

    goto/16 :goto_1

    .line 212
    :cond_f
    iget-object p1, p0, Lus/zoom/zrc/view/ParticipantPopupView;->data:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object p5, p0, Lus/zoom/zrc/view/ParticipantPopupView;->mContext:Landroid/content/Context;

    sget v0, Lus/zoom/zrcbox/R$string;->show_keypad:I

    invoke-virtual {p5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 213
    iget-object p1, p0, Lus/zoom/zrc/view/ParticipantPopupView;->onClickListener:Lus/zoom/zrc/view/ParticipantPopupView$OnClickListener;

    if-eqz p1, :cond_18

    iget-object p2, p0, Lus/zoom/zrc/view/ParticipantPopupView;->mParticipant:Lus/zoom/zrcsdk/model/ZRCParticipant;

    invoke-interface {p1, p2}, Lus/zoom/zrc/view/ParticipantPopupView$OnClickListener;->onClickKeypad(Lus/zoom/zrcsdk/model/ZRCParticipant;)V

    goto/16 :goto_1

    .line 214
    :cond_10
    iget-object p1, p0, Lus/zoom/zrc/view/ParticipantPopupView;->data:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object p5, p0, Lus/zoom/zrc/view/ParticipantPopupView;->mContext:Landroid/content/Context;

    sget v0, Lus/zoom/zrcbox/R$string;->assign_cohost:I

    invoke-virtual {p5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 215
    invoke-direct {p0}, Lus/zoom/zrc/view/ParticipantPopupView;->makeCoHost()V

    .line 216
    iget-object p1, p0, Lus/zoom/zrc/view/ParticipantPopupView;->onClickListener:Lus/zoom/zrc/view/ParticipantPopupView$OnClickListener;

    if-eqz p1, :cond_18

    .line 217
    invoke-interface {p1}, Lus/zoom/zrc/view/ParticipantPopupView$OnClickListener;->onDismiss()V

    goto/16 :goto_1

    .line 219
    :cond_11
    iget-object p1, p0, Lus/zoom/zrc/view/ParticipantPopupView;->data:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object p5, p0, Lus/zoom/zrc/view/ParticipantPopupView;->mContext:Landroid/content/Context;

    sget v0, Lus/zoom/zrcbox/R$string;->unassign_cohost:I

    invoke-virtual {p5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 220
    iget-object p1, p0, Lus/zoom/zrc/view/ParticipantPopupView;->onClickListener:Lus/zoom/zrc/view/ParticipantPopupView$OnClickListener;

    if-eqz p1, :cond_18

    .line 221
    iget-object p3, p0, Lus/zoom/zrc/view/ParticipantPopupView;->mParticipant:Lus/zoom/zrcsdk/model/ZRCParticipant;

    invoke-virtual {p3}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getUserId()I

    move-result p3

    invoke-interface {p1, p3, p2}, Lus/zoom/zrc/view/ParticipantPopupView$OnClickListener;->onClickAssignCoHost(IZ)V

    goto/16 :goto_1

    .line 222
    :cond_12
    iget-object p1, p0, Lus/zoom/zrc/view/ParticipantPopupView;->data:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object p5, p0, Lus/zoom/zrc/view/ParticipantPopupView;->mContext:Landroid/content/Context;

    sget v0, Lus/zoom/zrcbox/R$string;->assign_type_cc:I

    invoke-virtual {p5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 223
    iget-object p1, p0, Lus/zoom/zrc/view/ParticipantPopupView;->onClickListener:Lus/zoom/zrc/view/ParticipantPopupView$OnClickListener;

    if-eqz p1, :cond_18

    .line 224
    iget-object p2, p0, Lus/zoom/zrc/view/ParticipantPopupView;->mParticipant:Lus/zoom/zrcsdk/model/ZRCParticipant;

    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getUserId()I

    move-result p2

    invoke-interface {p1, p2, p4}, Lus/zoom/zrc/view/ParticipantPopupView$OnClickListener;->onClickAssignTypeCC(IZ)V

    goto/16 :goto_1

    .line 225
    :cond_13
    iget-object p1, p0, Lus/zoom/zrc/view/ParticipantPopupView;->data:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object p5, p0, Lus/zoom/zrc/view/ParticipantPopupView;->mContext:Landroid/content/Context;

    sget v0, Lus/zoom/zrcbox/R$string;->unassign_type_cc:I

    invoke-virtual {p5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 226
    iget-object p1, p0, Lus/zoom/zrc/view/ParticipantPopupView;->onClickListener:Lus/zoom/zrc/view/ParticipantPopupView$OnClickListener;

    if-eqz p1, :cond_18

    .line 227
    iget-object p3, p0, Lus/zoom/zrc/view/ParticipantPopupView;->mParticipant:Lus/zoom/zrcsdk/model/ZRCParticipant;

    invoke-virtual {p3}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getUserId()I

    move-result p3

    invoke-interface {p1, p3, p2}, Lus/zoom/zrc/view/ParticipantPopupView$OnClickListener;->onClickAssignTypeCC(IZ)V

    goto/16 :goto_1

    .line 228
    :cond_14
    iget-object p1, p0, Lus/zoom/zrc/view/ParticipantPopupView;->data:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object p5, p0, Lus/zoom/zrc/view/ParticipantPopupView;->mContext:Landroid/content/Context;

    sget v0, Lus/zoom/zrcbox/R$string;->put_in_waiting_room:I

    invoke-virtual {p5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17

    iget-object p1, p0, Lus/zoom/zrc/view/ParticipantPopupView;->data:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object p5, p0, Lus/zoom/zrc/view/ParticipantPopupView;->mContext:Landroid/content/Context;

    sget v0, Lus/zoom/zrcbox/R$string;->put_on_hold:I

    .line 229
    invoke-virtual {p5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    goto :goto_0

    .line 232
    :cond_15
    iget-object p1, p0, Lus/zoom/zrc/view/ParticipantPopupView;->data:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object p5, p0, Lus/zoom/zrc/view/ParticipantPopupView;->mContext:Landroid/content/Context;

    sget v0, Lus/zoom/zrcbox/R$string;->raise_hand:I

    invoke-virtual {p5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 233
    iget-object p1, p0, Lus/zoom/zrc/view/ParticipantPopupView;->onClickListener:Lus/zoom/zrc/view/ParticipantPopupView$OnClickListener;

    if-eqz p1, :cond_18

    .line 234
    iget-object p2, p0, Lus/zoom/zrc/view/ParticipantPopupView;->mParticipant:Lus/zoom/zrcsdk/model/ZRCParticipant;

    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getUserId()I

    move-result p2

    invoke-interface {p1, p2, p4}, Lus/zoom/zrc/view/ParticipantPopupView$OnClickListener;->onClickRaiseHand(IZ)V

    goto :goto_1

    .line 236
    :cond_16
    iget-object p1, p0, Lus/zoom/zrc/view/ParticipantPopupView;->data:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object p3, p0, Lus/zoom/zrc/view/ParticipantPopupView;->mContext:Landroid/content/Context;

    sget p4, Lus/zoom/zrcbox/R$string;->lower_hand:I

    invoke-virtual {p3, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    .line 237
    iget-object p1, p0, Lus/zoom/zrc/view/ParticipantPopupView;->onClickListener:Lus/zoom/zrc/view/ParticipantPopupView$OnClickListener;

    if-eqz p1, :cond_18

    .line 238
    iget-object p3, p0, Lus/zoom/zrc/view/ParticipantPopupView;->mParticipant:Lus/zoom/zrcsdk/model/ZRCParticipant;

    invoke-virtual {p3}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getUserId()I

    move-result p3

    invoke-interface {p1, p3, p2}, Lus/zoom/zrc/view/ParticipantPopupView$OnClickListener;->onClickRaiseHand(IZ)V

    goto :goto_1

    .line 230
    :cond_17
    :goto_0
    iget-object p1, p0, Lus/zoom/zrc/view/ParticipantPopupView;->onClickListener:Lus/zoom/zrc/view/ParticipantPopupView$OnClickListener;

    if-eqz p1, :cond_18

    .line 231
    iget-object p2, p0, Lus/zoom/zrc/view/ParticipantPopupView;->mParticipant:Lus/zoom/zrcsdk/model/ZRCParticipant;

    invoke-interface {p1, p2}, Lus/zoom/zrc/view/ParticipantPopupView$OnClickListener;->onClickPutInSilentMode(Lus/zoom/zrcsdk/model/ZRCParticipant;)V

    :cond_18
    :goto_1
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lus/zoom/zrc/view/ParticipantPopupView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public setListener(Lus/zoom/zrc/view/ParticipantPopupView$OnClickListener;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lus/zoom/zrc/view/ParticipantPopupView;->onClickListener:Lus/zoom/zrc/view/ParticipantPopupView$OnClickListener;

    return-void
.end method

.method public setOnDismissListener(Lus/zoom/zrc/view/ParticipantPopupView$OnDismissListener;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lus/zoom/zrc/view/ParticipantPopupView;->onDismissListener:Lus/zoom/zrc/view/ParticipantPopupView$OnDismissListener;

    return-void
.end method

.method public updateParticipant(Lus/zoom/zrcsdk/model/ZRCParticipant;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lus/zoom/zrc/view/ParticipantPopupView;->mParticipant:Lus/zoom/zrcsdk/model/ZRCParticipant;

    .line 145
    invoke-direct {p0}, Lus/zoom/zrc/view/ParticipantPopupView;->updateAdapterDataSet()V

    return-void
.end method
