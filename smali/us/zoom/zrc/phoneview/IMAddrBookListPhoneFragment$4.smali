.class Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment$4;
.super Ljava/lang/Object;
.source "IMAddrBookListPhoneFragment.java"

# interfaces
.implements Lus/zoom/zrc/view/SideBar$OnTouchingLetterChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment$4;->this$0:Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouchingLetterChanged(Ljava/lang/String;)V
    .locals 4

    .line 194
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getZrcContactIm()Ljava/util/List;

    move-result-object v0

    const-string v1, "@"

    .line 196
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 197
    iget-object p1, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment$4;->this$0:Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;

    invoke-static {p1}, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->access$100(Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;)Landroid/widget/ExpandableListView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/ExpandableListView;->setSelectedGroup(I)V

    return-void

    .line 200
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_3

    .line 201
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrc/model/ZRCContactImData;

    invoke-virtual {v1}, Lus/zoom/zrc/model/ZRCContactImData;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Rooms"

    .line 202
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 205
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 209
    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-eq v2, p1, :cond_4

    .line 210
    iget-object p1, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment$4;->this$0:Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;

    invoke-static {p1}, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->access$100(Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;)Landroid/widget/ExpandableListView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/ExpandableListView;->setSelectedGroup(I)V

    goto :goto_3

    .line 212
    :cond_4
    iget-object p1, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment$4;->this$0:Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;

    invoke-static {p1}, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->access$100(Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;)Landroid/widget/ExpandableListView;

    move-result-object p1

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v2}, Landroid/widget/ExpandableListView;->setSelectedGroup(I)V

    :goto_3
    return-void
.end method
