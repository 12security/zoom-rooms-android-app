.class Lus/zoom/zrc/view/ZRCSearchView$1;
.super Ljava/lang/Object;
.source "ZRCSearchView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/view/ZRCSearchView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/ZRCSearchView;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/ZRCSearchView;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lus/zoom/zrc/view/ZRCSearchView$1;->this$0:Lus/zoom/zrc/view/ZRCSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 92
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 93
    iget-object v1, p0, Lus/zoom/zrc/view/ZRCSearchView$1;->this$0:Lus/zoom/zrc/view/ZRCSearchView;

    invoke-static {v1}, Lus/zoom/zrc/view/ZRCSearchView;->access$000(Lus/zoom/zrc/view/ZRCSearchView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 94
    iget-object v1, p0, Lus/zoom/zrc/view/ZRCSearchView$1;->this$0:Lus/zoom/zrc/view/ZRCSearchView;

    invoke-static {v1}, Lus/zoom/zrc/view/ZRCSearchView;->access$000(Lus/zoom/zrc/view/ZRCSearchView;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/view/TouchDelegate;

    iget-object v3, p0, Lus/zoom/zrc/view/ZRCSearchView$1;->this$0:Lus/zoom/zrc/view/ZRCSearchView;

    invoke-static {v3}, Lus/zoom/zrc/view/ZRCSearchView;->access$100(Lus/zoom/zrc/view/ZRCSearchView;)Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 96
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 97
    iget-object v2, p0, Lus/zoom/zrc/view/ZRCSearchView$1;->this$0:Lus/zoom/zrc/view/ZRCSearchView;

    invoke-static {v2}, Lus/zoom/zrc/view/ZRCSearchView;->access$200(Lus/zoom/zrc/view/ZRCSearchView;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->getHitRect(Landroid/graphics/Rect;)V

    .line 98
    iget v2, v0, Landroid/graphics/Rect;->top:I

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 99
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 100
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCSearchView$1;->this$0:Lus/zoom/zrc/view/ZRCSearchView;

    invoke-static {v0}, Lus/zoom/zrc/view/ZRCSearchView;->access$000(Lus/zoom/zrc/view/ZRCSearchView;)Landroid/view/View;

    move-result-object v0

    new-instance v2, Landroid/view/TouchDelegate;

    iget-object v3, p0, Lus/zoom/zrc/view/ZRCSearchView$1;->this$0:Lus/zoom/zrc/view/ZRCSearchView;

    invoke-static {v3}, Lus/zoom/zrc/view/ZRCSearchView;->access$200(Lus/zoom/zrc/view/ZRCSearchView;)Landroid/widget/TextView;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    return-void
.end method
