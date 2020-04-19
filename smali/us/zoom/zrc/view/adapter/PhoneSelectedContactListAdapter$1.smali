.class Lus/zoom/zrc/view/adapter/PhoneSelectedContactListAdapter$1;
.super Ljava/lang/Object;
.source "PhoneSelectedContactListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/view/adapter/PhoneSelectedContactListAdapter;->onBindViewHolder(Lus/zoom/zrc/view/adapter/PhoneSelectedContactListAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/adapter/PhoneSelectedContactListAdapter;

.field final synthetic val$item:Lus/zoom/zrcsdk/model/ZRCContact;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/adapter/PhoneSelectedContactListAdapter;Lus/zoom/zrcsdk/model/ZRCContact;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lus/zoom/zrc/view/adapter/PhoneSelectedContactListAdapter$1;->this$0:Lus/zoom/zrc/view/adapter/PhoneSelectedContactListAdapter;

    iput-object p2, p0, Lus/zoom/zrc/view/adapter/PhoneSelectedContactListAdapter$1;->val$item:Lus/zoom/zrcsdk/model/ZRCContact;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 70
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p1

    iget-object v0, p0, Lus/zoom/zrc/view/adapter/PhoneSelectedContactListAdapter$1;->val$item:Lus/zoom/zrcsdk/model/ZRCContact;

    invoke-virtual {p1, v0}, Lus/zoom/zrc/model/AppModel;->removeSelected(Lus/zoom/zrcsdk/model/ZRCContact;)V

    return-void
.end method
