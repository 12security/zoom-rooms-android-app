.class public Lus/zoom/zrc/login/widget/ZRCListSearchBox;
.super Landroid/widget/FrameLayout;
.source "ZRCListSearchBox.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrc/login/widget/ZRCListSearchBox$SavedState;,
        Lus/zoom/zrc/login/widget/ZRCListSearchBox$LoginSearchListener;
    }
.end annotation


# instance fields
.field private mCancelView:Landroid/view/View;

.field private mEditText:Lus/zoom/zrc/base/widget/ZRCEditText;

.field private mHintView:Landroid/widget/TextView;

.field private mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lus/zoom/zrc/login/widget/ZRCListSearchBox$LoginSearchListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSearching:Z

.field private mStartSearchOnEntry:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 56
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 53
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/login/widget/ZRCListSearchBox;->mListeners:Ljava/util/Set;

    .line 57
    sget v0, Lus/zoom/zrcbox/R$layout;->zrc_list_search_box_layout:I

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lus/zoom/zrc/login/widget/ZRCListSearchBox;->mListeners:Ljava/util/Set;

    .line 62
    sget p2, Lus/zoom/zrcbox/R$layout;->zrc_list_search_box_layout:I

    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lus/zoom/zrc/login/widget/ZRCListSearchBox;->mListeners:Ljava/util/Set;

    .line 67
    sget p2, Lus/zoom/zrcbox/R$layout;->zrc_list_search_box_layout:I

    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 73
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 53
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lus/zoom/zrc/login/widget/ZRCListSearchBox;->mListeners:Ljava/util/Set;

    .line 74
    sget p2, Lus/zoom/zrcbox/R$layout;->zrc_list_search_box_layout:I

    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method

.method static synthetic access$200(Lus/zoom/zrc/login/widget/ZRCListSearchBox;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lus/zoom/zrc/login/widget/ZRCListSearchBox;->onCancelClicked()V

    return-void
.end method

.method static synthetic access$300(Lus/zoom/zrc/login/widget/ZRCListSearchBox;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lus/zoom/zrc/login/widget/ZRCListSearchBox;->triggerSearchStarted()V

    return-void
.end method

.method private onCancelClicked()V
    .locals 2

    .line 244
    iget-boolean v0, p0, Lus/zoom/zrc/login/widget/ZRCListSearchBox;->mStartSearchOnEntry:Z

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lus/zoom/zrc/login/widget/ZRCListSearchBox;->mEditText:Lus/zoom/zrc/base/widget/ZRCEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/widget/ZRCEditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 247
    iput-boolean v0, p0, Lus/zoom/zrc/login/widget/ZRCListSearchBox;->mSearching:Z

    .line 248
    invoke-virtual {p0}, Lus/zoom/zrc/login/widget/ZRCListSearchBox;->closeSoftKeyboard()V

    .line 249
    iget-object v1, p0, Lus/zoom/zrc/login/widget/ZRCListSearchBox;->mHintView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 250
    iget-object v0, p0, Lus/zoom/zrc/login/widget/ZRCListSearchBox;->mCancelView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 251
    iget-object v0, p0, Lus/zoom/zrc/login/widget/ZRCListSearchBox;->mEditText:Lus/zoom/zrc/base/widget/ZRCEditText;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/widget/ZRCEditText;->setVisibility(I)V

    .line 252
    iget-object v0, p0, Lus/zoom/zrc/login/widget/ZRCListSearchBox;->mEditText:Lus/zoom/zrc/base/widget/ZRCEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/widget/ZRCEditText;->setText(Ljava/lang/CharSequence;)V

    .line 254
    iget-object v0, p0, Lus/zoom/zrc/login/widget/ZRCListSearchBox;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrc/login/widget/ZRCListSearchBox$LoginSearchListener;

    .line 255
    invoke-interface {v1}, Lus/zoom/zrc/login/widget/ZRCListSearchBox$LoginSearchListener;->onSearchCancelled()V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private triggerSearchStarted()V
    .locals 4

    const/4 v0, 0x1

    .line 231
    iput-boolean v0, p0, Lus/zoom/zrc/login/widget/ZRCListSearchBox;->mSearching:Z

    .line 232
    iget-object v0, p0, Lus/zoom/zrc/login/widget/ZRCListSearchBox;->mHintView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 233
    iget-object v0, p0, Lus/zoom/zrc/login/widget/ZRCListSearchBox;->mCancelView:Landroid/view/View;

    iget-boolean v2, p0, Lus/zoom/zrc/login/widget/ZRCListSearchBox;->mStartSearchOnEntry:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 234
    iget-object v0, p0, Lus/zoom/zrc/login/widget/ZRCListSearchBox;->mEditText:Lus/zoom/zrc/base/widget/ZRCEditText;

    invoke-virtual {v0, v3}, Lus/zoom/zrc/base/widget/ZRCEditText;->setVisibility(I)V

    .line 235
    iget-object v0, p0, Lus/zoom/zrc/login/widget/ZRCListSearchBox;->mEditText:Lus/zoom/zrc/base/widget/ZRCEditText;

    invoke-virtual {v0}, Lus/zoom/zrc/base/widget/ZRCEditText;->requestFocus()Z

    .line 236
    invoke-virtual {p0}, Lus/zoom/zrc/login/widget/ZRCListSearchBox;->openSoftKeyboard()V

    .line 238
    iget-object v0, p0, Lus/zoom/zrc/login/widget/ZRCListSearchBox;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrc/login/widget/ZRCListSearchBox$LoginSearchListener;

    .line 239
    invoke-interface {v1}, Lus/zoom/zrc/login/widget/ZRCListSearchBox$LoginSearchListener;->onSearchStarted()V

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public addListener(Lus/zoom/zrc/login/widget/ZRCListSearchBox$LoginSearchListener;)V
    .locals 1

    .line 219
    iget-object v0, p0, Lus/zoom/zrc/login/widget/ZRCListSearchBox;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .line 202
    iget-boolean v0, p0, Lus/zoom/zrc/login/widget/ZRCListSearchBox;->mSearching:Z

    if-nez v0, :cond_0

    return-void

    .line 204
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/login/widget/ZRCListSearchBox;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrc/login/widget/ZRCListSearchBox$LoginSearchListener;

    .line 205
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lus/zoom/zrc/login/widget/ZRCListSearchBox$LoginSearchListener;->onSearchInput(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public cancelSearch()V
    .locals 0

    .line 78
    invoke-direct {p0}, Lus/zoom/zrc/login/widget/ZRCListSearchBox;->onCancelClicked()V

    return-void
.end method

.method public closeSoftKeyboard()V
    .locals 2

    .line 98
    iget-object v0, p0, Lus/zoom/zrc/login/widget/ZRCListSearchBox;->mEditText:Lus/zoom/zrc/base/widget/ZRCEditText;

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {p0}, Lus/zoom/zrc/login/widget/ZRCListSearchBox;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/login/widget/ZRCListSearchBox;->mEditText:Lus/zoom/zrc/base/widget/ZRCEditText;

    invoke-static {v0, v1}, Lus/zoom/androidlib/util/UIUtil;->closeSoftKeyboard(Landroid/content/Context;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 262
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 263
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    if-ne v0, v2, :cond_1

    .line 264
    invoke-virtual {p0}, Lus/zoom/zrc/login/widget/ZRCListSearchBox;->isSearching()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 265
    invoke-direct {p0}, Lus/zoom/zrc/login/widget/ZRCListSearchBox;->onCancelClicked()V

    return v1

    .line 268
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 171
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 172
    iget-object v1, p0, Lus/zoom/zrc/login/widget/ZRCListSearchBox;->mCancelView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lus/zoom/zrc/login/widget/ZRCListSearchBox;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lus/zoom/zrc/login/widget/ZRCListSearchBox;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    .line 173
    invoke-virtual {p0}, Lus/zoom/zrc/login/widget/ZRCListSearchBox;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x42400000    # 48.0f

    invoke-static {v2, v3}, Lus/zoom/androidlib/util/UIUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 174
    iget-object v2, p0, Lus/zoom/zrc/login/widget/ZRCListSearchBox;->mCancelView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 175
    invoke-virtual {p0}, Lus/zoom/zrc/login/widget/ZRCListSearchBox;->getWidth()I

    move-result v2

    sub-int/2addr v2, v1

    int-to-float v1, v2

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    .line 176
    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 184
    :pswitch_0
    iget-object p1, p0, Lus/zoom/zrc/login/widget/ZRCListSearchBox;->mCancelView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 185
    iget-object p1, p0, Lus/zoom/zrc/login/widget/ZRCListSearchBox;->mCancelView:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setPressed(Z)V

    return v3

    .line 178
    :pswitch_1
    iget-object p1, p0, Lus/zoom/zrc/login/widget/ZRCListSearchBox;->mCancelView:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setPressed(Z)V

    return v3

    .line 181
    :cond_0
    iget-object p1, p0, Lus/zoom/zrc/login/widget/ZRCListSearchBox;->mCancelView:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setPressed(Z)V

    return v3

    .line 189
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getSearchText()Ljava/lang/String;
    .locals 1

    .line 272
    invoke-virtual {p0}, Lus/zoom/zrc/login/widget/ZRCListSearchBox;->isSearching()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lus/zoom/zrc/login/widget/ZRCListSearchBox;->mEditText:Lus/zoom/zrc/base/widget/ZRCEditText;

    invoke-virtual {v0}, Lus/zoom/zrc/base/widget/ZRCEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public isSearching()Z
    .locals 1

    .line 227
    iget-boolean v0, p0, Lus/zoom/zrc/login/widget/ZRCListSearchBox;->mSearching:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 157
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 158
    iget-object v0, p0, Lus/zoom/zrc/login/widget/ZRCListSearchBox;->mEditText:Lus/zoom/zrc/base/widget/ZRCEditText;

    invoke-virtual {v0, p0}, Lus/zoom/zrc/base/widget/ZRCEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 163
    invoke-virtual {p0}, Lus/zoom/zrc/login/widget/ZRCListSearchBox;->closeSoftKeyboard()V

    .line 164
    iget-object v0, p0, Lus/zoom/zrc/login/widget/ZRCListSearchBox;->mEditText:Lus/zoom/zrc/base/widget/ZRCEditText;

    invoke-virtual {v0, p0}, Lus/zoom/zrc/base/widget/ZRCEditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 165
    iget-object v0, p0, Lus/zoom/zrc/login/widget/ZRCListSearchBox;->mEditText:Lus/zoom/zrc/base/widget/ZRCEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/widget/ZRCEditText;->setText(Ljava/lang/CharSequence;)V

    .line 166
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 125
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 126
    sget v0, Lus/zoom/zrcbox/R$id;->hint_text_search:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/login/widget/ZRCListSearchBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lus/zoom/zrc/login/widget/ZRCListSearchBox;->mHintView:Landroid/widget/TextView;

    .line 127
    sget v0, Lus/zoom/zrcbox/R$id;->edit_text_search:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/login/widget/ZRCListSearchBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lus/zoom/zrc/base/widget/ZRCEditText;

    iput-object v0, p0, Lus/zoom/zrc/login/widget/ZRCListSearchBox;->mEditText:Lus/zoom/zrc/base/widget/ZRCEditText;

    .line 128
    iget-object v0, p0, Lus/zoom/zrc/login/widget/ZRCListSearchBox;->mEditText:Lus/zoom/zrc/base/widget/ZRCEditText;

    invoke-virtual {v0}, Lus/zoom/zrc/base/widget/ZRCEditText;->setDisableClearIcon()V

    .line 129
    iget-object v0, p0, Lus/zoom/zrc/login/widget/ZRCListSearchBox;->mEditText:Lus/zoom/zrc/base/widget/ZRCEditText;

    invoke-virtual {v0, p0}, Lus/zoom/zrc/base/widget/ZRCEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 132
    invoke-virtual {p0}, Lus/zoom/zrc/login/widget/ZRCListSearchBox;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$drawable;->ic_search:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 133
    iget-object v1, p0, Lus/zoom/zrc/login/widget/ZRCListSearchBox;->mEditText:Lus/zoom/zrc/base/widget/ZRCEditText;

    invoke-virtual {v1}, Lus/zoom/zrc/base/widget/ZRCEditText;->getCurrentTextColor()I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 134
    invoke-virtual {p0}, Lus/zoom/zrc/login/widget/ZRCListSearchBox;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lus/zoom/zrcbox/R$dimen;->zrc_close_icon_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-static {v0, v1}, Lus/zoom/zrc/utils/ZRCUIUtils;->setComponentDrawableBound(Landroid/graphics/drawable/Drawable;I)V

    .line 135
    iget-object v1, p0, Lus/zoom/zrc/login/widget/ZRCListSearchBox;->mHintView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 136
    iget-object v1, p0, Lus/zoom/zrc/login/widget/ZRCListSearchBox;->mEditText:Lus/zoom/zrc/base/widget/ZRCEditText;

    invoke-virtual {v1, v0, v2, v2, v2}, Lus/zoom/zrc/base/widget/ZRCEditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 138
    sget v0, Lus/zoom/zrcbox/R$id;->cancel:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/login/widget/ZRCListSearchBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/login/widget/ZRCListSearchBox;->mCancelView:Landroid/view/View;

    .line 139
    iget-object v0, p0, Lus/zoom/zrc/login/widget/ZRCListSearchBox;->mCancelView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 140
    iget-object v0, p0, Lus/zoom/zrc/login/widget/ZRCListSearchBox;->mCancelView:Landroid/view/View;

    new-instance v1, Lus/zoom/zrc/login/widget/ZRCListSearchBox$1;

    invoke-direct {v1, p0}, Lus/zoom/zrc/login/widget/ZRCListSearchBox$1;-><init>(Lus/zoom/zrc/login/widget/ZRCListSearchBox;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    iget-object v0, p0, Lus/zoom/zrc/login/widget/ZRCListSearchBox;->mHintView:Landroid/widget/TextView;

    new-instance v1, Lus/zoom/zrc/login/widget/ZRCListSearchBox$2;

    invoke-direct {v1, p0}, Lus/zoom/zrc/login/widget/ZRCListSearchBox$2;-><init>(Lus/zoom/zrc/login/widget/ZRCListSearchBox;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 114
    instance-of v0, p1, Lus/zoom/zrc/login/widget/ZRCListSearchBox$SavedState;

    if-nez v0, :cond_0

    .line 115
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 118
    :cond_0
    check-cast p1, Lus/zoom/zrc/login/widget/ZRCListSearchBox$SavedState;

    .line 119
    invoke-virtual {p1}, Lus/zoom/zrc/login/widget/ZRCListSearchBox$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 120
    invoke-static {p1}, Lus/zoom/zrc/login/widget/ZRCListSearchBox$SavedState;->access$100(Lus/zoom/zrc/login/widget/ZRCListSearchBox$SavedState;)Z

    move-result p1

    iput-boolean p1, p0, Lus/zoom/zrc/login/widget/ZRCListSearchBox;->mSearching:Z

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 106
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 107
    new-instance v1, Lus/zoom/zrc/login/widget/ZRCListSearchBox$SavedState;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lus/zoom/zrc/login/widget/ZRCListSearchBox$SavedState;-><init>(Landroid/os/Parcelable;Lus/zoom/zrc/login/widget/ZRCListSearchBox$1;)V

    .line 108
    iget-boolean v0, p0, Lus/zoom/zrc/login/widget/ZRCListSearchBox;->mSearching:Z

    invoke-static {v1, v0}, Lus/zoom/zrc/login/widget/ZRCListSearchBox$SavedState;->access$102(Lus/zoom/zrc/login/widget/ZRCListSearchBox$SavedState;Z)Z

    return-object v1
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public openSoftKeyboard()V
    .locals 2

    .line 92
    iget-object v0, p0, Lus/zoom/zrc/login/widget/ZRCListSearchBox;->mEditText:Lus/zoom/zrc/base/widget/ZRCEditText;

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {p0}, Lus/zoom/zrc/login/widget/ZRCListSearchBox;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/login/widget/ZRCListSearchBox;->mEditText:Lus/zoom/zrc/base/widget/ZRCEditText;

    invoke-static {v0, v1}, Lus/zoom/androidlib/util/UIUtil;->openSoftKeyboard(Landroid/content/Context;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public removeListener(Lus/zoom/zrc/login/widget/ZRCListSearchBox$LoginSearchListener;)V
    .locals 1

    .line 223
    iget-object v0, p0, Lus/zoom/zrc/login/widget/ZRCListSearchBox;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public startSearchOnEntry()V
    .locals 2

    const/4 v0, 0x1

    .line 82
    iput-boolean v0, p0, Lus/zoom/zrc/login/widget/ZRCListSearchBox;->mStartSearchOnEntry:Z

    .line 83
    iget-object v0, p0, Lus/zoom/zrc/login/widget/ZRCListSearchBox;->mHintView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lus/zoom/zrc/login/widget/ZRCListSearchBox;->mEditText:Lus/zoom/zrc/base/widget/ZRCEditText;

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {v0}, Lus/zoom/zrc/base/widget/ZRCEditText;->setEnableClearIcon()V

    .line 85
    invoke-direct {p0}, Lus/zoom/zrc/login/widget/ZRCListSearchBox;->triggerSearchStarted()V

    goto :goto_0

    :cond_0
    const-string v0, "startSearchOnEntry should be called after inflate finished!"

    const/4 v1, 0x0

    .line 87
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
