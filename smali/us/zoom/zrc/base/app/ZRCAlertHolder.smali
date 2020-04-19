.class Lus/zoom/zrc/base/app/ZRCAlertHolder;
.super Ljava/lang/Object;
.source "ZRCAlertDialog.java"


# static fields
.field public static final ZM_CONTENT_TYPE_ITEMS:I = 0x3

.field public static final ZM_CONTENT_TYPE_LIST:I = 0x2

.field public static final ZM_CONTENT_TYPE_MSG:I = 0x1

.field public static final ZM_CONTENT_TYPE_MULTIITEMS:I = 0x4

.field public static final ZM_CONTENT_TYPE_NONE:I = 0x0

.field public static final ZM_CONTENT_TYPE_VIEW:I = 0x5


# instance fields
.field private adater:Landroid/widget/ListAdapter;

.field private cancelable:Z

.field private checkIndex:I

.field private checkedIndexs:[I

.field private context:Landroid/content/Context;

.field private dialog:Lus/zoom/zrc/base/app/ZRCAlertDialog;

.field private dismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private icon:Landroid/graphics/drawable/Drawable;

.field private isHideBottomGap:Z

.field private isMultiChoice:Z

.field private isSingleChoice:Z

.field private isVerticalStyle:Z

.field private items:[Ljava/lang/CharSequence;

.field private listDividerHeight:I

.field private listListener:Landroid/content/DialogInterface$OnClickListener;

.field private mNegativeButtonText:Ljava/lang/String;

.field private mNeutralButtonText:Ljava/lang/String;

.field private mPositiveButtonText:Ljava/lang/String;

.field private mTitleView:Landroid/view/View;

.field private mView:Landroid/view/View;

.field private mViewSpacingSpecified:Z

.field private msg:Ljava/lang/String;

.field private negativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field private neutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field private positiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field private theme:I

.field private title:Ljava/lang/String;

.field private type:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 863
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 813
    iput v0, p0, Lus/zoom/zrc/base/app/ZRCAlertHolder;->checkIndex:I

    const/4 v0, 0x0

    .line 815
    iput v0, p0, Lus/zoom/zrc/base/app/ZRCAlertHolder;->listDividerHeight:I

    .line 821
    sget v1, Lus/zoom/zrcbox/R$style;->ZRCDialog_Material:I

    iput v1, p0, Lus/zoom/zrc/base/app/ZRCAlertHolder;->theme:I

    .line 822
    iput-boolean v0, p0, Lus/zoom/zrc/base/app/ZRCAlertHolder;->isVerticalStyle:Z

    .line 864
    iput-object p1, p0, Lus/zoom/zrc/base/app/ZRCAlertHolder;->context:Landroid/content/Context;

    const/4 p1, 0x1

    .line 865
    iput-boolean p1, p0, Lus/zoom/zrc/base/app/ZRCAlertHolder;->cancelable:Z

    .line 866
    iput v0, p0, Lus/zoom/zrc/base/app/ZRCAlertHolder;->type:I

    return-void
.end method


# virtual methods
.method public getAdater()Landroid/widget/ListAdapter;
    .locals 1

    .line 955
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCAlertHolder;->adater:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getCheckIndex()I
    .locals 1

    .line 1004
    iget v0, p0, Lus/zoom/zrc/base/app/ZRCAlertHolder;->checkIndex:I

    return v0
.end method

.method public getCheckedIndexs()[I
    .locals 1

    .line 1012
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCAlertHolder;->checkedIndexs:[I

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 882
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCAlertHolder;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getDialog()Lus/zoom/zrc/base/app/ZRCAlertDialog;
    .locals 1

    .line 943
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCAlertHolder;->dialog:Lus/zoom/zrc/base/app/ZRCAlertDialog;

    return-object v0
.end method

.method public getDismissListener()Landroid/content/DialogInterface$OnDismissListener;
    .locals 1

    .line 976
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCAlertHolder;->dismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 915
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCAlertHolder;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getItems()[Ljava/lang/CharSequence;
    .locals 1

    .line 984
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCAlertHolder;->items:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getListDividerHeight()I
    .locals 1

    .line 1061
    iget v0, p0, Lus/zoom/zrc/base/app/ZRCAlertHolder;->listDividerHeight:I

    return v0
.end method

.method public getListListener()Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    .line 968
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCAlertHolder;->listListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .line 890
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCAlertHolder;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getNegativeButtonListener()Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    .line 825
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCAlertHolder;->negativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method public getNeutralButtonListener()Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    .line 843
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCAlertHolder;->neutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method public getPositiveButtonListener()Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    .line 834
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCAlertHolder;->positiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method public getTheme()I
    .locals 1

    .line 1045
    iget v0, p0, Lus/zoom/zrc/base/app/ZRCAlertHolder;->theme:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 903
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCAlertHolder;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleView()Landroid/view/View;
    .locals 1

    .line 1053
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCAlertHolder;->mTitleView:Landroid/view/View;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 947
    iget v0, p0, Lus/zoom/zrc/base/app/ZRCAlertHolder;->type:I

    return v0
.end method

.method public getmNegativeButtonText()Ljava/lang/String;
    .locals 1

    .line 878
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCAlertHolder;->mNegativeButtonText:Ljava/lang/String;

    return-object v0
.end method

.method public getmNeutralButtonText()Ljava/lang/String;
    .locals 1

    .line 874
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCAlertHolder;->mNeutralButtonText:Ljava/lang/String;

    return-object v0
.end method

.method public getmPositiveButtonText()Ljava/lang/String;
    .locals 1

    .line 870
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCAlertHolder;->mPositiveButtonText:Ljava/lang/String;

    return-object v0
.end method

.method public getmView()Landroid/view/View;
    .locals 1

    .line 1028
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCAlertHolder;->mView:Landroid/view/View;

    return-object v0
.end method

.method public isCancelable()Z
    .locals 1

    .line 935
    iget-boolean v0, p0, Lus/zoom/zrc/base/app/ZRCAlertHolder;->cancelable:Z

    return v0
.end method

.method public isHideBottomGap()Z
    .locals 1

    .line 996
    iget-boolean v0, p0, Lus/zoom/zrc/base/app/ZRCAlertHolder;->isHideBottomGap:Z

    return v0
.end method

.method public isMultiChoice()Z
    .locals 1

    .line 988
    iget-boolean v0, p0, Lus/zoom/zrc/base/app/ZRCAlertHolder;->isMultiChoice:Z

    return v0
.end method

.method public isSingleChoice()Z
    .locals 1

    .line 1024
    iget-boolean v0, p0, Lus/zoom/zrc/base/app/ZRCAlertHolder;->isSingleChoice:Z

    return v0
.end method

.method public isVerticalStyle()Z
    .locals 1

    .line 927
    iget-boolean v0, p0, Lus/zoom/zrc/base/app/ZRCAlertHolder;->isVerticalStyle:Z

    return v0
.end method

.method public ismViewSpacingSpecified()Z
    .locals 1

    .line 1037
    iget-boolean v0, p0, Lus/zoom/zrc/base/app/ZRCAlertHolder;->mViewSpacingSpecified:Z

    return v0
.end method

.method public setAdater(Landroid/widget/ListAdapter;)V
    .locals 0

    .line 959
    iput-object p1, p0, Lus/zoom/zrc/base/app/ZRCAlertHolder;->adater:Landroid/widget/ListAdapter;

    const/4 p1, 0x2

    .line 960
    iput p1, p0, Lus/zoom/zrc/base/app/ZRCAlertHolder;->type:I

    return-void
.end method

.method public setCancelable(Z)V
    .locals 0

    .line 931
    iput-boolean p1, p0, Lus/zoom/zrc/base/app/ZRCAlertHolder;->cancelable:Z

    return-void
.end method

.method public setCheckIndex(I)V
    .locals 0

    .line 1008
    iput p1, p0, Lus/zoom/zrc/base/app/ZRCAlertHolder;->checkIndex:I

    return-void
.end method

.method public setCheckedIndexs([I)V
    .locals 0

    .line 1016
    iput-object p1, p0, Lus/zoom/zrc/base/app/ZRCAlertHolder;->checkedIndexs:[I

    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .line 886
    iput-object p1, p0, Lus/zoom/zrc/base/app/ZRCAlertHolder;->context:Landroid/content/Context;

    return-void
.end method

.method public setDialog(Lus/zoom/zrc/base/app/ZRCAlertDialog;)V
    .locals 0

    .line 939
    iput-object p1, p0, Lus/zoom/zrc/base/app/ZRCAlertHolder;->dialog:Lus/zoom/zrc/base/app/ZRCAlertDialog;

    return-void
.end method

.method public setDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0

    .line 972
    iput-object p1, p0, Lus/zoom/zrc/base/app/ZRCAlertHolder;->dismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-void
.end method

.method public setHideBottomGap(Z)V
    .locals 0

    .line 1000
    iput-boolean p1, p0, Lus/zoom/zrc/base/app/ZRCAlertHolder;->isHideBottomGap:Z

    return-void
.end method

.method public setIcon(I)V
    .locals 1

    .line 919
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCAlertHolder;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/base/app/ZRCAlertHolder;->icon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 911
    iput-object p1, p0, Lus/zoom/zrc/base/app/ZRCAlertHolder;->icon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setItems([Ljava/lang/CharSequence;)V
    .locals 0

    .line 980
    iput-object p1, p0, Lus/zoom/zrc/base/app/ZRCAlertHolder;->items:[Ljava/lang/CharSequence;

    return-void
.end method

.method public setListDividerHeight(I)V
    .locals 0

    .line 1065
    iput p1, p0, Lus/zoom/zrc/base/app/ZRCAlertHolder;->listDividerHeight:I

    return-void
.end method

.method public setListListener(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .line 964
    iput-object p1, p0, Lus/zoom/zrc/base/app/ZRCAlertHolder;->listListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 1

    .line 894
    iput-object p1, p0, Lus/zoom/zrc/base/app/ZRCAlertHolder;->msg:Ljava/lang/String;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 896
    iput v0, p0, Lus/zoom/zrc/base/app/ZRCAlertHolder;->type:I

    goto :goto_0

    .line 897
    :cond_0
    iget p1, p0, Lus/zoom/zrc/base/app/ZRCAlertHolder;->type:I

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    .line 898
    iput p1, p0, Lus/zoom/zrc/base/app/ZRCAlertHolder;->type:I

    :cond_1
    :goto_0
    return-void
.end method

.method public setMultiChoice(Z)V
    .locals 0

    .line 992
    iput-boolean p1, p0, Lus/zoom/zrc/base/app/ZRCAlertHolder;->isMultiChoice:Z

    return-void
.end method

.method public setNegativeButtonListener(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .line 830
    iput-object p1, p0, Lus/zoom/zrc/base/app/ZRCAlertHolder;->negativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method public setNeutralButtonListener(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .line 848
    iput-object p1, p0, Lus/zoom/zrc/base/app/ZRCAlertHolder;->neutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method public setPositiveButtonListener(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .line 839
    iput-object p1, p0, Lus/zoom/zrc/base/app/ZRCAlertHolder;->positiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method public setSingleChoice(Z)V
    .locals 0

    .line 1020
    iput-boolean p1, p0, Lus/zoom/zrc/base/app/ZRCAlertHolder;->isSingleChoice:Z

    return-void
.end method

.method public setTheme(I)V
    .locals 0

    .line 1049
    iput p1, p0, Lus/zoom/zrc/base/app/ZRCAlertHolder;->theme:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 907
    iput-object p1, p0, Lus/zoom/zrc/base/app/ZRCAlertHolder;->title:Ljava/lang/String;

    return-void
.end method

.method public setTitleView(Landroid/view/View;)V
    .locals 0

    .line 1057
    iput-object p1, p0, Lus/zoom/zrc/base/app/ZRCAlertHolder;->mTitleView:Landroid/view/View;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 951
    iput p1, p0, Lus/zoom/zrc/base/app/ZRCAlertHolder;->type:I

    return-void
.end method

.method public setVerticalStyle(Z)V
    .locals 0

    .line 923
    iput-boolean p1, p0, Lus/zoom/zrc/base/app/ZRCAlertHolder;->isVerticalStyle:Z

    return-void
.end method

.method public setmNegativeButtonText(Ljava/lang/String;)V
    .locals 0

    .line 860
    iput-object p1, p0, Lus/zoom/zrc/base/app/ZRCAlertHolder;->mNegativeButtonText:Ljava/lang/String;

    return-void
.end method

.method public setmNeutralButtonText(Ljava/lang/String;)V
    .locals 0

    .line 856
    iput-object p1, p0, Lus/zoom/zrc/base/app/ZRCAlertHolder;->mNeutralButtonText:Ljava/lang/String;

    return-void
.end method

.method public setmPositiveButtonText(Ljava/lang/String;)V
    .locals 0

    .line 852
    iput-object p1, p0, Lus/zoom/zrc/base/app/ZRCAlertHolder;->mPositiveButtonText:Ljava/lang/String;

    return-void
.end method

.method public setmView(Landroid/view/View;)V
    .locals 0

    .line 1032
    iput-object p1, p0, Lus/zoom/zrc/base/app/ZRCAlertHolder;->mView:Landroid/view/View;

    const/4 p1, 0x5

    .line 1033
    iput p1, p0, Lus/zoom/zrc/base/app/ZRCAlertHolder;->type:I

    return-void
.end method

.method public setmViewSpacingSpecified(Z)V
    .locals 0

    .line 1041
    iput-boolean p1, p0, Lus/zoom/zrc/base/app/ZRCAlertHolder;->mViewSpacingSpecified:Z

    return-void
.end method
