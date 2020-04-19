.class Lus/zoom/zrp/view/ZRPAttendeeEmailsAdapter$AttendeeEmailViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ZRPAttendeeEmailsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrp/view/ZRPAttendeeEmailsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AttendeeEmailViewHolder"
.end annotation


# instance fields
.field private ivAttendeeDelete:Landroid/widget/ImageView;

.field final synthetic this$0:Lus/zoom/zrp/view/ZRPAttendeeEmailsAdapter;

.field private tvAttendeeEmail:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lus/zoom/zrp/view/ZRPAttendeeEmailsAdapter;Landroid/view/View;)V
    .locals 0
    .param p1    # Lus/zoom/zrp/view/ZRPAttendeeEmailsAdapter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 73
    iput-object p1, p0, Lus/zoom/zrp/view/ZRPAttendeeEmailsAdapter$AttendeeEmailViewHolder;->this$0:Lus/zoom/zrp/view/ZRPAttendeeEmailsAdapter;

    .line 74
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 76
    sget p1, Lus/zoom/zrcbox/R$id;->tv_invitee_name:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lus/zoom/zrp/view/ZRPAttendeeEmailsAdapter$AttendeeEmailViewHolder;->tvAttendeeEmail:Landroid/widget/TextView;

    .line 77
    sget p1, Lus/zoom/zrcbox/R$id;->iv_invitee_delete:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lus/zoom/zrp/view/ZRPAttendeeEmailsAdapter$AttendeeEmailViewHolder;->ivAttendeeDelete:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrp/view/ZRPAttendeeEmailsAdapter$AttendeeEmailViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 68
    iget-object p0, p0, Lus/zoom/zrp/view/ZRPAttendeeEmailsAdapter$AttendeeEmailViewHolder;->tvAttendeeEmail:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lus/zoom/zrp/view/ZRPAttendeeEmailsAdapter$AttendeeEmailViewHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 68
    iget-object p0, p0, Lus/zoom/zrp/view/ZRPAttendeeEmailsAdapter$AttendeeEmailViewHolder;->ivAttendeeDelete:Landroid/widget/ImageView;

    return-object p0
.end method
