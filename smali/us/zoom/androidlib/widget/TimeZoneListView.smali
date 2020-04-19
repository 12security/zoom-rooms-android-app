.class public Lus/zoom/androidlib/widget/TimeZoneListView;
.super Landroid/widget/ListView;
.source "TimeZoneListView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/androidlib/widget/TimeZoneListView$Listener;
    }
.end annotation


# instance fields
.field private mAdapter:Lus/zoom/androidlib/widget/TimeZoneListAdapter;

.field private mListener:Lus/zoom/androidlib/widget/TimeZoneListView$Listener;

.field private mSelectedId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 22
    invoke-direct {p0, p1}, Lus/zoom/androidlib/widget/TimeZoneListView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    invoke-direct {p0, p1}, Lus/zoom/androidlib/widget/TimeZoneListView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    invoke-direct {p0, p1}, Lus/zoom/androidlib/widget/TimeZoneListView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 2

    .line 37
    new-instance v0, Lus/zoom/androidlib/widget/TimeZoneListAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lus/zoom/androidlib/widget/TimeZoneListAdapter;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lus/zoom/androidlib/widget/TimeZoneListView;->mAdapter:Lus/zoom/androidlib/widget/TimeZoneListAdapter;

    .line 38
    iget-object p1, p0, Lus/zoom/androidlib/widget/TimeZoneListView;->mAdapter:Lus/zoom/androidlib/widget/TimeZoneListAdapter;

    invoke-virtual {p0, p1}, Lus/zoom/androidlib/widget/TimeZoneListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 39
    invoke-virtual {p0, p0}, Lus/zoom/androidlib/widget/TimeZoneListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const/4 p1, 0x1

    .line 40
    invoke-virtual {p0, p1}, Lus/zoom/androidlib/widget/TimeZoneListView;->setHeaderDividersEnabled(Z)V

    return-void
.end method


# virtual methods
.method public getSelectedName()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lus/zoom/androidlib/widget/TimeZoneListView;->mSelectedId:Ljava/lang/String;

    return-object v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 54
    invoke-virtual {p0, p3}, Lus/zoom/androidlib/widget/TimeZoneListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    .line 56
    check-cast p1, Ljava/lang/String;

    .line 57
    invoke-static {p1}, Lus/zoom/androidlib/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 61
    :cond_0
    iput-object p1, p0, Lus/zoom/androidlib/widget/TimeZoneListView;->mSelectedId:Ljava/lang/String;

    .line 62
    iget-object p1, p0, Lus/zoom/androidlib/widget/TimeZoneListView;->mListener:Lus/zoom/androidlib/widget/TimeZoneListView$Listener;

    if-eqz p1, :cond_1

    .line 63
    iget-object p2, p0, Lus/zoom/androidlib/widget/TimeZoneListView;->mSelectedId:Ljava/lang/String;

    invoke-interface {p1, p2}, Lus/zoom/androidlib/widget/TimeZoneListView$Listener;->onSelected(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public refresh()V
    .locals 1

    .line 48
    iget-object v0, p0, Lus/zoom/androidlib/widget/TimeZoneListView;->mAdapter:Lus/zoom/androidlib/widget/TimeZoneListAdapter;

    invoke-virtual {v0}, Lus/zoom/androidlib/widget/TimeZoneListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setListener(Lus/zoom/androidlib/widget/TimeZoneListView$Listener;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lus/zoom/androidlib/widget/TimeZoneListView;->mListener:Lus/zoom/androidlib/widget/TimeZoneListView$Listener;

    return-void
.end method
