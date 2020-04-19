.class Lus/zoom/zrc/view/ZRCSearchView$2;
.super Ljava/lang/Object;
.source "ZRCSearchView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/view/ZRCSearchView;->startShowView()V
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

    .line 119
    iput-object p1, p0, Lus/zoom/zrc/view/ZRCSearchView$2;->this$0:Lus/zoom/zrc/view/ZRCSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 122
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCSearchView$2;->this$0:Lus/zoom/zrc/view/ZRCSearchView;

    invoke-static {v0}, Lus/zoom/zrc/view/ZRCSearchView;->access$000(Lus/zoom/zrc/view/ZRCSearchView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 123
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCSearchView$2;->this$0:Lus/zoom/zrc/view/ZRCSearchView;

    invoke-virtual {v0}, Lus/zoom/zrc/view/ZRCSearchView;->requestLayout()V

    .line 124
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCSearchView$2;->this$0:Lus/zoom/zrc/view/ZRCSearchView;

    invoke-static {v0}, Lus/zoom/zrc/view/ZRCSearchView;->access$200(Lus/zoom/zrc/view/ZRCSearchView;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 125
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCSearchView$2;->this$0:Lus/zoom/zrc/view/ZRCSearchView;

    invoke-static {v0}, Lus/zoom/zrc/view/ZRCSearchView;->access$200(Lus/zoom/zrc/view/ZRCSearchView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, p0, Lus/zoom/zrc/view/ZRCSearchView$2;->this$0:Lus/zoom/zrc/view/ZRCSearchView;

    invoke-static {v2}, Lus/zoom/zrc/view/ZRCSearchView;->access$000(Lus/zoom/zrc/view/ZRCSearchView;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v3, p0, Lus/zoom/zrc/view/ZRCSearchView$2;->this$0:Lus/zoom/zrc/view/ZRCSearchView;

    invoke-static {v3}, Lus/zoom/zrc/view/ZRCSearchView;->access$200(Lus/zoom/zrc/view/ZRCSearchView;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setX(F)V

    .line 126
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCSearchView$2;->this$0:Lus/zoom/zrc/view/ZRCSearchView;

    invoke-static {v0}, Lus/zoom/zrc/view/ZRCSearchView;->access$300(Lus/zoom/zrc/view/ZRCSearchView;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v2, p0, Lus/zoom/zrc/view/ZRCSearchView$2;->this$0:Lus/zoom/zrc/view/ZRCSearchView;

    invoke-virtual {v2}, Lus/zoom/zrc/view/ZRCSearchView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v2, v3}, Lus/zoom/androidlib/util/UIUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setX(F)V

    .line 127
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCSearchView$2;->this$0:Lus/zoom/zrc/view/ZRCSearchView;

    invoke-virtual {v0}, Lus/zoom/zrc/view/ZRCSearchView;->getSearch_content()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 128
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCSearchView$2;->this$0:Lus/zoom/zrc/view/ZRCSearchView;

    invoke-virtual {v0}, Lus/zoom/zrc/view/ZRCSearchView;->requestLayout()V

    .line 130
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCSearchView$2;->this$0:Lus/zoom/zrc/view/ZRCSearchView;

    invoke-static {v0}, Lus/zoom/zrc/view/ZRCSearchView;->access$000(Lus/zoom/zrc/view/ZRCSearchView;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-static {v0, v2}, Lus/zoom/zrc/view/ZRCSearchView;->access$402(Lus/zoom/zrc/view/ZRCSearchView;I)I

    .line 131
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCSearchView$2;->this$0:Lus/zoom/zrc/view/ZRCSearchView;

    invoke-static {v0}, Lus/zoom/zrc/view/ZRCSearchView;->access$100(Lus/zoom/zrc/view/ZRCSearchView;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v2

    invoke-static {v0, v2}, Lus/zoom/zrc/view/ZRCSearchView;->access$502(Lus/zoom/zrc/view/ZRCSearchView;I)I

    .line 132
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCSearchView$2;->this$0:Lus/zoom/zrc/view/ZRCSearchView;

    invoke-static {v0}, Lus/zoom/zrc/view/ZRCSearchView;->access$300(Lus/zoom/zrc/view/ZRCSearchView;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getX()F

    move-result v2

    invoke-static {v0, v2}, Lus/zoom/zrc/view/ZRCSearchView;->access$602(Lus/zoom/zrc/view/ZRCSearchView;F)F

    .line 133
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCSearchView$2;->this$0:Lus/zoom/zrc/view/ZRCSearchView;

    invoke-static {v0}, Lus/zoom/zrc/view/ZRCSearchView;->access$200(Lus/zoom/zrc/view/ZRCSearchView;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getX()F

    move-result v2

    invoke-static {v0, v2}, Lus/zoom/zrc/view/ZRCSearchView;->access$702(Lus/zoom/zrc/view/ZRCSearchView;F)F

    .line 134
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCSearchView$2;->this$0:Lus/zoom/zrc/view/ZRCSearchView;

    invoke-static {v0}, Lus/zoom/zrc/view/ZRCSearchView;->access$100(Lus/zoom/zrc/view/ZRCSearchView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 135
    iget-object v2, p0, Lus/zoom/zrc/view/ZRCSearchView$2;->this$0:Lus/zoom/zrc/view/ZRCSearchView;

    invoke-static {v2}, Lus/zoom/zrc/view/ZRCSearchView;->access$400(Lus/zoom/zrc/view/ZRCSearchView;)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 136
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCSearchView$2;->this$0:Lus/zoom/zrc/view/ZRCSearchView;

    invoke-static {v0}, Lus/zoom/zrc/view/ZRCSearchView;->access$400(Lus/zoom/zrc/view/ZRCSearchView;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lus/zoom/zrc/view/ZRCSearchView$2;->this$0:Lus/zoom/zrc/view/ZRCSearchView;

    invoke-static {v3}, Lus/zoom/zrc/view/ZRCSearchView;->access$300(Lus/zoom/zrc/view/ZRCSearchView;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-static {v0, v2}, Lus/zoom/zrc/view/ZRCSearchView;->access$802(Lus/zoom/zrc/view/ZRCSearchView;F)F

    .line 137
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCSearchView$2;->this$0:Lus/zoom/zrc/view/ZRCSearchView;

    invoke-static {v0}, Lus/zoom/zrc/view/ZRCSearchView;->access$300(Lus/zoom/zrc/view/ZRCSearchView;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v2, p0, Lus/zoom/zrc/view/ZRCSearchView$2;->this$0:Lus/zoom/zrc/view/ZRCSearchView;

    invoke-static {v2}, Lus/zoom/zrc/view/ZRCSearchView;->access$400(Lus/zoom/zrc/view/ZRCSearchView;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lus/zoom/zrc/view/ZRCSearchView$2;->this$0:Lus/zoom/zrc/view/ZRCSearchView;

    invoke-static {v3}, Lus/zoom/zrc/view/ZRCSearchView;->access$300(Lus/zoom/zrc/view/ZRCSearchView;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setX(F)V

    .line 138
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCSearchView$2;->this$0:Lus/zoom/zrc/view/ZRCSearchView;

    invoke-virtual {v0}, Lus/zoom/zrc/view/ZRCSearchView;->getSearch_content()Landroid/widget/EditText;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 139
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCSearchView$2;->this$0:Lus/zoom/zrc/view/ZRCSearchView;

    invoke-static {v0}, Lus/zoom/zrc/view/ZRCSearchView;->access$200(Lus/zoom/zrc/view/ZRCSearchView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 140
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCSearchView$2;->this$0:Lus/zoom/zrc/view/ZRCSearchView;

    invoke-static {v0}, Lus/zoom/zrc/view/ZRCSearchView;->access$000(Lus/zoom/zrc/view/ZRCSearchView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
