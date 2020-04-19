.class public Lus/zoom/zrp/view/ZRPAttendeeEmailsAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ZRPAttendeeEmailsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrp/view/ZRPAttendeeEmailsAdapter$AttendeeEmailViewHolder;,
        Lus/zoom/zrp/view/ZRPAttendeeEmailsAdapter$OnAttendeeEmailDeleteListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lus/zoom/zrp/view/ZRPAttendeeEmailsAdapter$AttendeeEmailViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private attendeeEmails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private onAttendeeEmailDeleteListener:Lus/zoom/zrp/view/ZRPAttendeeEmailsAdapter$OnAttendeeEmailDeleteListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 24
    iput-object p1, p0, Lus/zoom/zrp/view/ZRPAttendeeEmailsAdapter;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$100(Lus/zoom/zrp/view/ZRPAttendeeEmailsAdapter;)Ljava/util/List;
    .locals 0

    .line 17
    iget-object p0, p0, Lus/zoom/zrp/view/ZRPAttendeeEmailsAdapter;->attendeeEmails:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lus/zoom/zrp/view/ZRPAttendeeEmailsAdapter;)Lus/zoom/zrp/view/ZRPAttendeeEmailsAdapter$OnAttendeeEmailDeleteListener;
    .locals 0

    .line 17
    iget-object p0, p0, Lus/zoom/zrp/view/ZRPAttendeeEmailsAdapter;->onAttendeeEmailDeleteListener:Lus/zoom/zrp/view/ZRPAttendeeEmailsAdapter$OnAttendeeEmailDeleteListener;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 37
    iget-object v0, p0, Lus/zoom/zrp/view/ZRPAttendeeEmailsAdapter;->attendeeEmails:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 17
    check-cast p1, Lus/zoom/zrp/view/ZRPAttendeeEmailsAdapter$AttendeeEmailViewHolder;

    invoke-virtual {p0, p1, p2}, Lus/zoom/zrp/view/ZRPAttendeeEmailsAdapter;->onBindViewHolder(Lus/zoom/zrp/view/ZRPAttendeeEmailsAdapter$AttendeeEmailViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lus/zoom/zrp/view/ZRPAttendeeEmailsAdapter$AttendeeEmailViewHolder;I)V
    .locals 3
    .param p1    # Lus/zoom/zrp/view/ZRPAttendeeEmailsAdapter$AttendeeEmailViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 49
    iget-object v0, p0, Lus/zoom/zrp/view/ZRPAttendeeEmailsAdapter;->attendeeEmails:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 50
    invoke-static {p1}, Lus/zoom/zrp/view/ZRPAttendeeEmailsAdapter$AttendeeEmailViewHolder;->access$000(Lus/zoom/zrp/view/ZRPAttendeeEmailsAdapter$AttendeeEmailViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    invoke-static {p1}, Lus/zoom/zrp/view/ZRPAttendeeEmailsAdapter$AttendeeEmailViewHolder;->access$300(Lus/zoom/zrp/view/ZRPAttendeeEmailsAdapter$AttendeeEmailViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    new-instance v2, Lus/zoom/zrp/view/ZRPAttendeeEmailsAdapter$1;

    invoke-direct {v2, p0, p2, v0}, Lus/zoom/zrp/view/ZRPAttendeeEmailsAdapter$1;-><init>(Lus/zoom/zrp/view/ZRPAttendeeEmailsAdapter;ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    invoke-static {p1}, Lus/zoom/zrp/view/ZRPAttendeeEmailsAdapter$AttendeeEmailViewHolder;->access$300(Lus/zoom/zrp/view/ZRPAttendeeEmailsAdapter$AttendeeEmailViewHolder;)Landroid/widget/ImageView;

    move-result-object p2

    invoke-static {p1}, Lus/zoom/zrp/view/ZRPAttendeeEmailsAdapter$AttendeeEmailViewHolder;->access$000(Lus/zoom/zrp/view/ZRPAttendeeEmailsAdapter$AttendeeEmailViewHolder;)Landroid/widget/TextView;

    move-result-object p1

    invoke-static {p2, p1}, Lus/zoom/zrc/utils/ZRCUIUtils;->matchImageViewToTextSize(Landroid/widget/ImageView;Landroid/widget/TextView;)V

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

    .line 17
    invoke-virtual {p0, p1, p2}, Lus/zoom/zrp/view/ZRPAttendeeEmailsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lus/zoom/zrp/view/ZRPAttendeeEmailsAdapter$AttendeeEmailViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lus/zoom/zrp/view/ZRPAttendeeEmailsAdapter$AttendeeEmailViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 43
    iget-object p2, p0, Lus/zoom/zrp/view/ZRPAttendeeEmailsAdapter;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lus/zoom/zrcbox/R$layout;->item_zrp_invitee:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 44
    new-instance p2, Lus/zoom/zrp/view/ZRPAttendeeEmailsAdapter$AttendeeEmailViewHolder;

    invoke-direct {p2, p0, p1}, Lus/zoom/zrp/view/ZRPAttendeeEmailsAdapter$AttendeeEmailViewHolder;-><init>(Lus/zoom/zrp/view/ZRPAttendeeEmailsAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setAttendeeEmails(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 28
    iput-object p1, p0, Lus/zoom/zrp/view/ZRPAttendeeEmailsAdapter;->attendeeEmails:Ljava/util/List;

    return-void
.end method

.method public setOnAttendeeEmailDeleteListener(Lus/zoom/zrp/view/ZRPAttendeeEmailsAdapter$OnAttendeeEmailDeleteListener;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lus/zoom/zrp/view/ZRPAttendeeEmailsAdapter;->onAttendeeEmailDeleteListener:Lus/zoom/zrp/view/ZRPAttendeeEmailsAdapter$OnAttendeeEmailDeleteListener;

    return-void
.end method
