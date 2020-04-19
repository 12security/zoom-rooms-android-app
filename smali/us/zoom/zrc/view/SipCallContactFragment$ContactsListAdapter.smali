.class Lus/zoom/zrc/view/SipCallContactFragment$ContactsListAdapter;
.super Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter;
.source "SipCallContactFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/view/SipCallContactFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContactsListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter<",
        "Lus/zoom/zrc/view/SipCallContactFragment$MatchedContact;",
        "Lus/zoom/zrc/view/SipCallContactFragment$ContactsViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private contactsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrc/view/SipCallContactFragment$MatchedContact;",
            ">;"
        }
    .end annotation
.end field

.field private inflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lus/zoom/zrc/view/SipCallContactFragment;


# direct methods
.method private constructor <init>(Lus/zoom/zrc/view/SipCallContactFragment;)V
    .locals 0

    .line 367
    iput-object p1, p0, Lus/zoom/zrc/view/SipCallContactFragment$ContactsListAdapter;->this$0:Lus/zoom/zrc/view/SipCallContactFragment;

    invoke-direct {p0}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter;-><init>()V

    .line 368
    invoke-virtual {p1}, Lus/zoom/zrc/view/SipCallContactFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/view/SipCallContactFragment$ContactsListAdapter;->inflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method synthetic constructor <init>(Lus/zoom/zrc/view/SipCallContactFragment;Lus/zoom/zrc/view/SipCallContactFragment$1;)V
    .locals 0

    .line 362
    invoke-direct {p0, p1}, Lus/zoom/zrc/view/SipCallContactFragment$ContactsListAdapter;-><init>(Lus/zoom/zrc/view/SipCallContactFragment;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 400
    iget-object v0, p0, Lus/zoom/zrc/view/SipCallContactFragment$ContactsListAdapter;->contactsList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected bridge synthetic getListItem(I)Ljava/lang/Object;
    .locals 0

    .line 362
    invoke-virtual {p0, p1}, Lus/zoom/zrc/view/SipCallContactFragment$ContactsListAdapter;->getListItem(I)Lus/zoom/zrc/view/SipCallContactFragment$MatchedContact;

    move-result-object p1

    return-object p1
.end method

.method protected getListItem(I)Lus/zoom/zrc/view/SipCallContactFragment$MatchedContact;
    .locals 1

    .line 405
    iget-object v0, p0, Lus/zoom/zrc/view/SipCallContactFragment$ContactsListAdapter;->contactsList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lus/zoom/zrc/view/SipCallContactFragment$MatchedContact;

    return-object p1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 362
    check-cast p1, Lus/zoom/zrc/view/SipCallContactFragment$ContactsViewHolder;

    invoke-virtual {p0, p1, p2}, Lus/zoom/zrc/view/SipCallContactFragment$ContactsListAdapter;->onBindViewHolder(Lus/zoom/zrc/view/SipCallContactFragment$ContactsViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lus/zoom/zrc/view/SipCallContactFragment$ContactsViewHolder;I)V
    .locals 6
    .param p1    # Lus/zoom/zrc/view/SipCallContactFragment$ContactsViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 417
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView$Adapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 418
    invoke-virtual {p0, p2}, Lus/zoom/zrc/view/SipCallContactFragment$ContactsListAdapter;->getListItem(I)Lus/zoom/zrc/view/SipCallContactFragment$MatchedContact;

    move-result-object p2

    .line 419
    invoke-static {p1}, Lus/zoom/zrc/view/SipCallContactFragment$ContactsViewHolder;->access$1200(Lus/zoom/zrc/view/SipCallContactFragment$ContactsViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {p2}, Lus/zoom/zrc/view/SipCallContactFragment$MatchedContact;->access$600(Lus/zoom/zrc/view/SipCallContactFragment$MatchedContact;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 420
    invoke-static {p2}, Lus/zoom/zrc/view/SipCallContactFragment$MatchedContact;->access$800(Lus/zoom/zrc/view/SipCallContactFragment$MatchedContact;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 421
    invoke-static {p1}, Lus/zoom/zrc/view/SipCallContactFragment$ContactsViewHolder;->access$1300(Lus/zoom/zrc/view/SipCallContactFragment$ContactsViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lus/zoom/zrc/view/SipCallContactFragment$ContactsListAdapter;->this$0:Lus/zoom/zrc/view/SipCallContactFragment;

    sget v3, Lus/zoom/zrcbox/R$string;->ext:I

    invoke-virtual {v2, v3}, Lus/zoom/zrc/view/SipCallContactFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lus/zoom/zrc/view/SipCallContactFragment$MatchedContact;->access$700(Lus/zoom/zrc/view/SipCallContactFragment$MatchedContact;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 422
    invoke-static {p1}, Lus/zoom/zrc/view/SipCallContactFragment$ContactsViewHolder;->access$1300(Lus/zoom/zrc/view/SipCallContactFragment$ContactsViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/view/SipCallContactFragment$ContactsListAdapter;->this$0:Lus/zoom/zrc/view/SipCallContactFragment;

    sget v2, Lus/zoom/zrcbox/R$string;->accessibility_ext:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Lus/zoom/zrc/view/SipCallContactFragment$MatchedContact;->access$700(Lus/zoom/zrc/view/SipCallContactFragment$MatchedContact;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lus/zoom/zrc/phonecall/PhoneCallNumberUtils;->getContentDescriptionForNumber(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lus/zoom/zrc/view/SipCallContactFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 424
    :cond_0
    invoke-static {p1}, Lus/zoom/zrc/view/SipCallContactFragment$ContactsViewHolder;->access$1300(Lus/zoom/zrc/view/SipCallContactFragment$ContactsViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {p2}, Lus/zoom/zrc/view/SipCallContactFragment$MatchedContact;->access$700(Lus/zoom/zrc/view/SipCallContactFragment$MatchedContact;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 427
    :goto_0
    new-instance v0, Lus/zoom/zrc/view/SipCallContactFragment$ContactsListAdapter$1;

    invoke-direct {v0, p0, p2}, Lus/zoom/zrc/view/SipCallContactFragment$ContactsListAdapter$1;-><init>(Lus/zoom/zrc/view/SipCallContactFragment$ContactsListAdapter;Lus/zoom/zrc/view/SipCallContactFragment$MatchedContact;)V

    .line 440
    invoke-static {p1}, Lus/zoom/zrc/view/SipCallContactFragment$ContactsViewHolder;->access$1400(Lus/zoom/zrc/view/SipCallContactFragment$ContactsViewHolder;)Landroid/widget/ImageButton;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 441
    iget-object p1, p1, Lus/zoom/zrc/view/SipCallContactFragment$ContactsViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

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

    .line 362
    invoke-virtual {p0, p1, p2}, Lus/zoom/zrc/view/SipCallContactFragment$ContactsListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lus/zoom/zrc/view/SipCallContactFragment$ContactsViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lus/zoom/zrc/view/SipCallContactFragment$ContactsViewHolder;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 411
    new-instance p2, Lus/zoom/zrc/view/SipCallContactFragment$ContactsViewHolder;

    iget-object v0, p0, Lus/zoom/zrc/view/SipCallContactFragment$ContactsListAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v1, Lus/zoom/zrcbox/R$layout;->sip_contact_list_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lus/zoom/zrc/view/SipCallContactFragment$ContactsViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public search(Ljava/lang/String;)I
    .locals 1

    .line 382
    iget-object p1, p0, Lus/zoom/zrc/view/SipCallContactFragment$ContactsListAdapter;->this$0:Lus/zoom/zrc/view/SipCallContactFragment;

    invoke-static {p1}, Lus/zoom/zrc/view/SipCallContactFragment;->access$900(Lus/zoom/zrc/view/SipCallContactFragment;)Z

    move-result p1

    const/4 v0, -0x1

    if-eqz p1, :cond_1

    .line 383
    iget-object p1, p0, Lus/zoom/zrc/view/SipCallContactFragment$ContactsListAdapter;->this$0:Lus/zoom/zrc/view/SipCallContactFragment;

    invoke-static {p1}, Lus/zoom/zrc/view/SipCallContactFragment;->access$1000(Lus/zoom/zrc/view/SipCallContactFragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    return v0

    .line 385
    :cond_0
    iget-object p1, p0, Lus/zoom/zrc/view/SipCallContactFragment$ContactsListAdapter;->this$0:Lus/zoom/zrc/view/SipCallContactFragment;

    invoke-static {p1}, Lus/zoom/zrc/view/SipCallContactFragment;->access$1100(Lus/zoom/zrc/view/SipCallContactFragment;)Z

    move-result p1

    if-nez p1, :cond_1

    return v0

    .line 390
    :cond_1
    invoke-virtual {p0}, Lus/zoom/zrc/view/SipCallContactFragment$ContactsListAdapter;->getItemCount()I

    move-result p1

    if-lez p1, :cond_2

    const/4 p1, 0x0

    return p1

    :cond_2
    return v0
.end method

.method updateList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrc/view/SipCallContactFragment$MatchedContact;",
            ">;)V"
        }
    .end annotation

    .line 372
    iget-object v0, p0, Lus/zoom/zrc/view/SipCallContactFragment$ContactsListAdapter;->contactsList:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 376
    :cond_0
    iput-object p1, p0, Lus/zoom/zrc/view/SipCallContactFragment$ContactsListAdapter;->contactsList:Ljava/util/List;

    .line 377
    invoke-virtual {p0}, Lus/zoom/zrc/view/SipCallContactFragment$ContactsListAdapter;->notifyDataSetChanged()V

    return-void
.end method
