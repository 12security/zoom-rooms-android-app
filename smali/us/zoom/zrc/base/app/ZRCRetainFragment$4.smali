.class Lus/zoom/zrc/base/app/ZRCRetainFragment$4;
.super Lus/zoom/androidlib/util/EventAction;
.source "ZRCRetainFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/base/app/ZRCRetainFragment;->onReceivedPropertyChanged(Landroidx/databinding/Observable;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/base/app/ZRCRetainFragment;

.field final synthetic val$propertyId:I

.field final synthetic val$sender:Landroidx/databinding/Observable;


# direct methods
.method constructor <init>(Lus/zoom/zrc/base/app/ZRCRetainFragment;Ljava/lang/String;Landroidx/databinding/Observable;I)V
    .locals 0

    .line 123
    iput-object p1, p0, Lus/zoom/zrc/base/app/ZRCRetainFragment$4;->this$0:Lus/zoom/zrc/base/app/ZRCRetainFragment;

    iput-object p3, p0, Lus/zoom/zrc/base/app/ZRCRetainFragment$4;->val$sender:Landroidx/databinding/Observable;

    iput p4, p0, Lus/zoom/zrc/base/app/ZRCRetainFragment$4;->val$propertyId:I

    invoke-direct {p0, p2}, Lus/zoom/androidlib/util/EventAction;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run(Lus/zoom/androidlib/util/IUIElement;)V
    .locals 2

    .line 126
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCRetainFragment$4;->this$0:Lus/zoom/zrc/base/app/ZRCRetainFragment;

    invoke-static {v0}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->access$200(Lus/zoom/zrc/base/app/ZRCRetainFragment;)Lus/zoom/zrc/base/app/IZRCUIElement;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 127
    iget-object p1, p0, Lus/zoom/zrc/base/app/ZRCRetainFragment$4;->this$0:Lus/zoom/zrc/base/app/ZRCRetainFragment;

    invoke-static {p1}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->access$200(Lus/zoom/zrc/base/app/ZRCRetainFragment;)Lus/zoom/zrc/base/app/IZRCUIElement;

    move-result-object p1

    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCRetainFragment$4;->val$sender:Landroidx/databinding/Observable;

    iget v1, p0, Lus/zoom/zrc/base/app/ZRCRetainFragment$4;->val$propertyId:I

    invoke-interface {p1, v0, v1}, Lus/zoom/zrc/base/app/IZRCUIElement;->onReceivedPropertyChangedCallbackInActive(Landroidx/databinding/Observable;I)V

    :cond_0
    return-void
.end method
