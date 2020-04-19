.class public Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;
.super Ljava/lang/Object;
.source "ZRCTitleBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/base/widget/ZRCTitleBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Builder"
.end annotation


# instance fields
.field private mCustomTextColor:I

.field private mLabelLeftAction:Ljava/lang/CharSequence;

.field private mLabelLeftBack:Ljava/lang/CharSequence;

.field private mLabelRightAction:Ljava/lang/CharSequence;

.field private mShowLeftAction:Z

.field private mShowLeftBack:Z

.field private mShowRightAction:Z

.field private mTaskLeftAction:Ljava/lang/Runnable;

.field private mTaskRightAction:Ljava/lang/Runnable;

.field final synthetic this$0:Lus/zoom/zrc/base/widget/ZRCTitleBar;


# direct methods
.method public constructor <init>(Lus/zoom/zrc/base/widget/ZRCTitleBar;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;->this$0:Lus/zoom/zrc/base/widget/ZRCTitleBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 119
    iput-boolean p1, p0, Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;->mShowLeftBack:Z

    .line 120
    iput-boolean p1, p0, Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;->mShowLeftAction:Z

    .line 121
    iput-boolean p1, p0, Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;->mShowRightAction:Z

    const/4 p1, -0x1

    .line 132
    iput p1, p0, Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;->mCustomTextColor:I

    return-void
.end method

.method static synthetic access$600(Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;)Ljava/lang/Runnable;
    .locals 0

    .line 117
    iget-object p0, p0, Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;->mTaskLeftAction:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$700(Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;)Ljava/lang/Runnable;
    .locals 0

    .line 117
    iget-object p0, p0, Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;->mTaskRightAction:Ljava/lang/Runnable;

    return-object p0
.end method


# virtual methods
.method public setBackNavigation(I)Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 135
    iget-object v0, p0, Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;->this$0:Lus/zoom/zrc/base/widget/ZRCTitleBar;

    invoke-virtual {v0}, Lus/zoom/zrc/base/widget/ZRCTitleBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 136
    invoke-virtual {p0, p1}, Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;->setBackNavigation(Ljava/lang/CharSequence;)Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setBackNavigation(Ljava/lang/CharSequence;)Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 140
    iput-boolean v0, p0, Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;->mShowLeftBack:Z

    .line 141
    iput-object p1, p0, Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;->mLabelLeftBack:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setCustomBackAction(Ljava/lang/Runnable;)Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;
    .locals 1

    .line 146
    iget-object v0, p0, Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;->this$0:Lus/zoom/zrc/base/widget/ZRCTitleBar;

    invoke-static {v0, p1}, Lus/zoom/zrc/base/widget/ZRCTitleBar;->access$102(Lus/zoom/zrc/base/widget/ZRCTitleBar;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    return-object p0
.end method

.method public setCustomTextColor(I)Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 175
    iput p1, p0, Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;->mCustomTextColor:I

    return-object p0
.end method

.method public setLeftAction(ILjava/lang/Runnable;)Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 151
    iget-object v0, p0, Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;->this$0:Lus/zoom/zrc/base/widget/ZRCTitleBar;

    invoke-virtual {v0}, Lus/zoom/zrc/base/widget/ZRCTitleBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 152
    invoke-virtual {p0, p1, p2}, Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;->setLeftAction(Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setLeftAction(Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 156
    iput-boolean v0, p0, Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;->mShowLeftAction:Z

    .line 157
    iput-object p1, p0, Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;->mLabelLeftAction:Ljava/lang/CharSequence;

    .line 158
    iput-object p2, p0, Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;->mTaskLeftAction:Ljava/lang/Runnable;

    return-object p0
.end method

.method public setRightAction(ILjava/lang/Runnable;)Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 163
    iget-object v0, p0, Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;->this$0:Lus/zoom/zrc/base/widget/ZRCTitleBar;

    invoke-virtual {v0}, Lus/zoom/zrc/base/widget/ZRCTitleBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 164
    invoke-virtual {p0, p1, p2}, Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;->setRightAction(Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRightAction(Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 168
    iput-boolean v0, p0, Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;->mShowRightAction:Z

    .line 169
    iput-object p1, p0, Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;->mLabelRightAction:Ljava/lang/CharSequence;

    .line 170
    iput-object p2, p0, Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;->mTaskRightAction:Ljava/lang/Runnable;

    return-object p0
.end method

.method public show()V
    .locals 4

    .line 180
    iget-object v0, p0, Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;->this$0:Lus/zoom/zrc/base/widget/ZRCTitleBar;

    invoke-static {v0}, Lus/zoom/zrc/base/widget/ZRCTitleBar;->access$200(Lus/zoom/zrc/base/widget/ZRCTitleBar;)Landroid/widget/TextView;

    move-result-object v0

    iget-boolean v1, p0, Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;->mShowLeftBack:Z

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 181
    iget-object v0, p0, Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;->this$0:Lus/zoom/zrc/base/widget/ZRCTitleBar;

    invoke-static {v0}, Lus/zoom/zrc/base/widget/ZRCTitleBar;->access$300(Lus/zoom/zrc/base/widget/ZRCTitleBar;)Landroid/widget/TextView;

    move-result-object v0

    iget-boolean v1, p0, Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;->mShowLeftAction:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 182
    iget-object v0, p0, Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;->this$0:Lus/zoom/zrc/base/widget/ZRCTitleBar;

    invoke-static {v0}, Lus/zoom/zrc/base/widget/ZRCTitleBar;->access$400(Lus/zoom/zrc/base/widget/ZRCTitleBar;)Landroid/widget/TextView;

    move-result-object v0

    iget-boolean v1, p0, Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;->mShowRightAction:Z

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    const/16 v2, 0x8

    :goto_2
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 184
    iget-object v0, p0, Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;->mLabelLeftBack:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    .line 185
    iget-object v0, p0, Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;->this$0:Lus/zoom/zrc/base/widget/ZRCTitleBar;

    invoke-static {v0}, Lus/zoom/zrc/base/widget/ZRCTitleBar;->access$200(Lus/zoom/zrc/base/widget/ZRCTitleBar;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;->mLabelLeftBack:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 187
    :cond_3
    iget-object v0, p0, Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;->this$0:Lus/zoom/zrc/base/widget/ZRCTitleBar;

    invoke-static {v0}, Lus/zoom/zrc/base/widget/ZRCTitleBar;->access$200(Lus/zoom/zrc/base/widget/ZRCTitleBar;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    :goto_3
    iget-object v0, p0, Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;->this$0:Lus/zoom/zrc/base/widget/ZRCTitleBar;

    iget-object v1, p0, Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;->mLabelLeftBack:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Lus/zoom/zrc/base/widget/ZRCTitleBar;->access$500(Lus/zoom/zrc/base/widget/ZRCTitleBar;Ljava/lang/CharSequence;)V

    .line 191
    iget-object v0, p0, Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;->mLabelLeftAction:Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    .line 192
    iget-object v0, p0, Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;->this$0:Lus/zoom/zrc/base/widget/ZRCTitleBar;

    invoke-static {v0}, Lus/zoom/zrc/base/widget/ZRCTitleBar;->access$300(Lus/zoom/zrc/base/widget/ZRCTitleBar;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;->mLabelLeftAction:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    :cond_4
    iget-object v0, p0, Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;->mLabelRightAction:Ljava/lang/CharSequence;

    if-eqz v0, :cond_5

    .line 196
    iget-object v0, p0, Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;->this$0:Lus/zoom/zrc/base/widget/ZRCTitleBar;

    invoke-static {v0}, Lus/zoom/zrc/base/widget/ZRCTitleBar;->access$400(Lus/zoom/zrc/base/widget/ZRCTitleBar;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;->mLabelRightAction:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    :cond_5
    iget-object v0, p0, Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;->mTaskLeftAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_6

    .line 200
    iget-object v0, p0, Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;->this$0:Lus/zoom/zrc/base/widget/ZRCTitleBar;

    invoke-static {v0}, Lus/zoom/zrc/base/widget/ZRCTitleBar;->access$300(Lus/zoom/zrc/base/widget/ZRCTitleBar;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder$1;

    invoke-direct {v1, p0}, Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder$1;-><init>(Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    :cond_6
    iget-object v0, p0, Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;->mTaskRightAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_7

    .line 209
    iget-object v0, p0, Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;->this$0:Lus/zoom/zrc/base/widget/ZRCTitleBar;

    invoke-static {v0}, Lus/zoom/zrc/base/widget/ZRCTitleBar;->access$400(Lus/zoom/zrc/base/widget/ZRCTitleBar;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder$2;

    invoke-direct {v1, p0}, Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder$2;-><init>(Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    :cond_7
    iget v0, p0, Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;->mCustomTextColor:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    .line 218
    iget-object v0, p0, Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;->this$0:Lus/zoom/zrc/base/widget/ZRCTitleBar;

    invoke-static {v0}, Lus/zoom/zrc/base/widget/ZRCTitleBar;->access$200(Lus/zoom/zrc/base/widget/ZRCTitleBar;)Landroid/widget/TextView;

    move-result-object v0

    iget v1, p0, Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;->mCustomTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 219
    iget-object v0, p0, Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;->this$0:Lus/zoom/zrc/base/widget/ZRCTitleBar;

    invoke-static {v0}, Lus/zoom/zrc/base/widget/ZRCTitleBar;->access$300(Lus/zoom/zrc/base/widget/ZRCTitleBar;)Landroid/widget/TextView;

    move-result-object v0

    iget v1, p0, Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;->mCustomTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 220
    iget-object v0, p0, Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;->this$0:Lus/zoom/zrc/base/widget/ZRCTitleBar;

    invoke-static {v0}, Lus/zoom/zrc/base/widget/ZRCTitleBar;->access$400(Lus/zoom/zrc/base/widget/ZRCTitleBar;)Landroid/widget/TextView;

    move-result-object v0

    iget v1, p0, Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;->mCustomTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 221
    iget-object v0, p0, Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;->this$0:Lus/zoom/zrc/base/widget/ZRCTitleBar;

    invoke-static {v0}, Lus/zoom/zrc/base/widget/ZRCTitleBar;->access$800(Lus/zoom/zrc/base/widget/ZRCTitleBar;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;->mCustomTextColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_4

    .line 223
    :cond_8
    iget-object v0, p0, Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;->this$0:Lus/zoom/zrc/base/widget/ZRCTitleBar;

    invoke-static {v0}, Lus/zoom/zrc/base/widget/ZRCTitleBar;->access$200(Lus/zoom/zrc/base/widget/ZRCTitleBar;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;->this$0:Lus/zoom/zrc/base/widget/ZRCTitleBar;

    invoke-static {v1}, Lus/zoom/zrc/base/widget/ZRCTitleBar;->access$900(Lus/zoom/zrc/base/widget/ZRCTitleBar;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 224
    iget-object v0, p0, Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;->this$0:Lus/zoom/zrc/base/widget/ZRCTitleBar;

    invoke-static {v0}, Lus/zoom/zrc/base/widget/ZRCTitleBar;->access$300(Lus/zoom/zrc/base/widget/ZRCTitleBar;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;->this$0:Lus/zoom/zrc/base/widget/ZRCTitleBar;

    invoke-static {v1}, Lus/zoom/zrc/base/widget/ZRCTitleBar;->access$900(Lus/zoom/zrc/base/widget/ZRCTitleBar;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 225
    iget-object v0, p0, Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;->this$0:Lus/zoom/zrc/base/widget/ZRCTitleBar;

    invoke-static {v0}, Lus/zoom/zrc/base/widget/ZRCTitleBar;->access$400(Lus/zoom/zrc/base/widget/ZRCTitleBar;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;->this$0:Lus/zoom/zrc/base/widget/ZRCTitleBar;

    invoke-static {v1}, Lus/zoom/zrc/base/widget/ZRCTitleBar;->access$900(Lus/zoom/zrc/base/widget/ZRCTitleBar;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 226
    iget-object v0, p0, Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;->this$0:Lus/zoom/zrc/base/widget/ZRCTitleBar;

    invoke-static {v0}, Lus/zoom/zrc/base/widget/ZRCTitleBar;->access$800(Lus/zoom/zrc/base/widget/ZRCTitleBar;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;->this$0:Lus/zoom/zrc/base/widget/ZRCTitleBar;

    invoke-static {v1}, Lus/zoom/zrc/base/widget/ZRCTitleBar;->access$900(Lus/zoom/zrc/base/widget/ZRCTitleBar;)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 228
    :goto_4
    iget-object v0, p0, Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;->this$0:Lus/zoom/zrc/base/widget/ZRCTitleBar;

    invoke-static {v0}, Lus/zoom/zrc/base/widget/ZRCTitleBar;->access$800(Lus/zoom/zrc/base/widget/ZRCTitleBar;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/base/widget/ZRCTitleBar$Builder;->this$0:Lus/zoom/zrc/base/widget/ZRCTitleBar;

    invoke-virtual {v1}, Lus/zoom/zrc/base/widget/ZRCTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lus/zoom/zrcbox/R$dimen;->login_action_bar_back_img_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-static {v0, v1}, Lus/zoom/zrc/utils/ZRCUIUtils;->setComponentDrawableBound(Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method
