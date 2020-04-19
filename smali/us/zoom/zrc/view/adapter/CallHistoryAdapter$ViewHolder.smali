.class public Lus/zoom/zrc/view/adapter/CallHistoryAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "CallHistoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/view/adapter/CallHistoryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field rlCover:Landroid/widget/RelativeLayout;

.field final synthetic this$0:Lus/zoom/zrc/view/adapter/CallHistoryAdapter;

.field tvHistoryNumber:Landroid/widget/TextView;

.field tvTime:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lus/zoom/zrc/view/adapter/CallHistoryAdapter;Landroid/view/View;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lus/zoom/zrc/view/adapter/CallHistoryAdapter$ViewHolder;->this$0:Lus/zoom/zrc/view/adapter/CallHistoryAdapter;

    .line 115
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 116
    iput-object p3, p0, Lus/zoom/zrc/view/adapter/CallHistoryAdapter$ViewHolder;->rlCover:Landroid/widget/RelativeLayout;

    .line 117
    iput-object p4, p0, Lus/zoom/zrc/view/adapter/CallHistoryAdapter$ViewHolder;->tvHistoryNumber:Landroid/widget/TextView;

    .line 118
    iput-object p5, p0, Lus/zoom/zrc/view/adapter/CallHistoryAdapter$ViewHolder;->tvTime:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public swipe(F)V
    .locals 1

    .line 122
    iget-object v0, p0, Lus/zoom/zrc/view/adapter/CallHistoryAdapter$ViewHolder;->rlCover:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setTranslationX(F)V

    return-void
.end method
