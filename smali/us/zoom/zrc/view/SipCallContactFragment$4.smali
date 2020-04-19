.class Lus/zoom/zrc/view/SipCallContactFragment$4;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SipCallContactFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/view/SipCallContactFragment;->setupContactListViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/SipCallContactFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/SipCallContactFragment;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lus/zoom/zrc/view/SipCallContactFragment$4;->this$0:Lus/zoom/zrc/view/SipCallContactFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 215
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 216
    iget-object p1, p0, Lus/zoom/zrc/view/SipCallContactFragment$4;->this$0:Lus/zoom/zrc/view/SipCallContactFragment;

    invoke-static {p1}, Lus/zoom/zrc/view/SipCallContactFragment;->access$400(Lus/zoom/zrc/view/SipCallContactFragment;)V

    return-void
.end method
