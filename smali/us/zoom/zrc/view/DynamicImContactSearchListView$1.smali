.class Lus/zoom/zrc/view/DynamicImContactSearchListView$1;
.super Lus/zoom/zrc/simpleListener/SimpleIZRPtEventListener;
.source "DynamicImContactSearchListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/view/DynamicImContactSearchListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/DynamicImContactSearchListView;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/DynamicImContactSearchListView;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lus/zoom/zrc/view/DynamicImContactSearchListView$1;->this$0:Lus/zoom/zrc/view/DynamicImContactSearchListView;

    invoke-direct {p0}, Lus/zoom/zrc/simpleListener/SimpleIZRPtEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDynamicContactListNotification(Ljava/util/ArrayList;Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lus/zoom/zrcsdk/model/ZRCContact;",
            ">;",
            "Ljava/lang/String;",
            "IZ)V"
        }
    .end annotation

    .line 55
    iget-object p1, p0, Lus/zoom/zrc/view/DynamicImContactSearchListView$1;->this$0:Lus/zoom/zrc/view/DynamicImContactSearchListView;

    invoke-static {p1}, Lus/zoom/zrc/view/DynamicImContactSearchListView;->access$000(Lus/zoom/zrc/view/DynamicImContactSearchListView;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 56
    :cond_0
    iget-object p1, p0, Lus/zoom/zrc/view/DynamicImContactSearchListView$1;->this$0:Lus/zoom/zrc/view/DynamicImContactSearchListView;

    invoke-static {p1}, Lus/zoom/zrc/view/DynamicImContactSearchListView;->access$100(Lus/zoom/zrc/view/DynamicImContactSearchListView;)Lus/zoom/zrc/view/DynamicImContactSearchListView$DynamicContatcSearchAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/view/DynamicImContactSearchListView$DynamicContatcSearchAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onImUpdateContactNotification(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lus/zoom/zrcsdk/model/ZRCContact;",
            ">;)V"
        }
    .end annotation

    .line 61
    iget-object p1, p0, Lus/zoom/zrc/view/DynamicImContactSearchListView$1;->this$0:Lus/zoom/zrc/view/DynamicImContactSearchListView;

    invoke-static {p1}, Lus/zoom/zrc/view/DynamicImContactSearchListView;->access$100(Lus/zoom/zrc/view/DynamicImContactSearchListView;)Lus/zoom/zrc/view/DynamicImContactSearchListView$DynamicContatcSearchAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/view/DynamicImContactSearchListView$DynamicContatcSearchAdapter;->notifyDataSetChanged()V

    return-void
.end method
