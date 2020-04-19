.class Lus/zoom/zrc/view/SipCallContactFragment$ContactsViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SipCallContactFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/view/SipCallContactFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ContactsViewHolder"
.end annotation


# instance fields
.field private callView:Landroid/widget/ImageButton;

.field private nameView:Landroid/widget/TextView;

.field private numberView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 453
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 454
    sget v0, Lus/zoom/zrcbox/R$id;->contact_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lus/zoom/zrc/view/SipCallContactFragment$ContactsViewHolder;->nameView:Landroid/widget/TextView;

    .line 455
    sget v0, Lus/zoom/zrcbox/R$id;->contact_number:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lus/zoom/zrc/view/SipCallContactFragment$ContactsViewHolder;->numberView:Landroid/widget/TextView;

    .line 456
    sget v0, Lus/zoom/zrcbox/R$id;->contact_call:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lus/zoom/zrc/view/SipCallContactFragment$ContactsViewHolder;->callView:Landroid/widget/ImageButton;

    return-void
.end method

.method static synthetic access$1200(Lus/zoom/zrc/view/SipCallContactFragment$ContactsViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 446
    iget-object p0, p0, Lus/zoom/zrc/view/SipCallContactFragment$ContactsViewHolder;->nameView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1300(Lus/zoom/zrc/view/SipCallContactFragment$ContactsViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 446
    iget-object p0, p0, Lus/zoom/zrc/view/SipCallContactFragment$ContactsViewHolder;->numberView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1400(Lus/zoom/zrc/view/SipCallContactFragment$ContactsViewHolder;)Landroid/widget/ImageButton;
    .locals 0

    .line 446
    iget-object p0, p0, Lus/zoom/zrc/view/SipCallContactFragment$ContactsViewHolder;->callView:Landroid/widget/ImageButton;

    return-object p0
.end method
