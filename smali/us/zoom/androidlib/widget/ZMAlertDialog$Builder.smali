.class public Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;
.super Ljava/lang/Object;
.source "ZMAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/androidlib/widget/ZMAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private holder:Lus/zoom/androidlib/widget/ZMAlertHolder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 565
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 566
    new-instance v0, Lus/zoom/androidlib/widget/ZMAlertHolder;

    invoke-direct {v0, p1}, Lus/zoom/androidlib/widget/ZMAlertHolder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    return-void
.end method


# virtual methods
.method public create()Lus/zoom/androidlib/widget/ZMAlertDialog;
    .locals 3

    .line 570
    new-instance v0, Lus/zoom/androidlib/widget/ZMAlertDialog;

    iget-object v1, p0, Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    invoke-virtual {v1}, Lus/zoom/androidlib/widget/ZMAlertHolder;->getTheme()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lus/zoom/androidlib/widget/ZMAlertDialog;-><init>(Lus/zoom/androidlib/widget/ZMAlertHolder;I)V

    .line 571
    iget-object v1, p0, Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    invoke-virtual {v1, v0}, Lus/zoom/androidlib/widget/ZMAlertHolder;->setDialog(Lus/zoom/androidlib/widget/ZMAlertDialog;)V

    .line 572
    iget-object v1, p0, Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    invoke-virtual {v1}, Lus/zoom/androidlib/widget/ZMAlertHolder;->isCancelable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lus/zoom/androidlib/widget/ZMAlertDialog;->setCancelable(Z)V

    .line 573
    iget-object v1, p0, Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    invoke-virtual {v1}, Lus/zoom/androidlib/widget/ZMAlertHolder;->getDismissListener()Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 574
    iget-object v1, p0, Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    invoke-virtual {v1}, Lus/zoom/androidlib/widget/ZMAlertHolder;->getDismissListener()Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lus/zoom/androidlib/widget/ZMAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_0
    return-object v0
.end method

.method public getButton(I)Landroid/widget/Button;
    .locals 1

    .line 717
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    invoke-virtual {v0}, Lus/zoom/androidlib/widget/ZMAlertHolder;->getDialog()Lus/zoom/androidlib/widget/ZMAlertDialog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/androidlib/widget/ZMAlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    return-object p1
.end method

.method public setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;
    .locals 2

    .line 729
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lus/zoom/androidlib/widget/ZMAlertHolder;->setType(I)V

    .line 730
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    invoke-virtual {v0, p1}, Lus/zoom/androidlib/widget/ZMAlertHolder;->setAdater(Landroid/widget/ListAdapter;)V

    .line 731
    iget-object p1, p0, Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    invoke-virtual {p1, p2}, Lus/zoom/androidlib/widget/ZMAlertHolder;->setListListener(Landroid/content/DialogInterface$OnClickListener;)V

    return-object p0
.end method

.method public setCancelable(Z)Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;
    .locals 1

    .line 699
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    invoke-virtual {v0, p1}, Lus/zoom/androidlib/widget/ZMAlertHolder;->setCancelable(Z)V

    return-object p0
.end method

.method public setContentPadding(IIII)Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;
    .locals 1

    .line 764
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    invoke-virtual {v0, p1, p2, p3, p4}, Lus/zoom/androidlib/widget/ZMAlertHolder;->setContentPadding(IIII)V

    return-object p0
.end method

.method public setEnableAutoClickBtnDismiss(Z)Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;
    .locals 1

    .line 769
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    invoke-virtual {v0, p1}, Lus/zoom/androidlib/widget/ZMAlertHolder;->setEnableAutoClickBtnDismiss(Z)V

    return-object p0
.end method

.method public setIcon(I)Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;
    .locals 1

    .line 647
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    invoke-virtual {v0, p1}, Lus/zoom/androidlib/widget/ZMAlertHolder;->setIcon(I)V

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;
    .locals 1

    .line 642
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    invoke-virtual {v0, p1}, Lus/zoom/androidlib/widget/ZMAlertHolder;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-object p0
.end method

.method public setListDividerHeight(I)Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;
    .locals 1

    .line 637
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    invoke-virtual {v0, p1}, Lus/zoom/androidlib/widget/ZMAlertHolder;->setListDividerHeight(I)V

    return-object p0
.end method

.method public setMessage(I)Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;
    .locals 2

    if-lez p1, :cond_0

    .line 615
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lus/zoom/androidlib/widget/ZMAlertHolder;->setType(I)V

    .line 616
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    invoke-virtual {v0}, Lus/zoom/androidlib/widget/ZMAlertHolder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lus/zoom/androidlib/widget/ZMAlertHolder;->setMsg(Ljava/lang/String;)V

    goto :goto_0

    .line 618
    :cond_0
    iget-object p1, p0, Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lus/zoom/androidlib/widget/ZMAlertHolder;->setMsg(Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method public setMessage(Ljava/lang/String;)Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;
    .locals 1

    .line 579
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    invoke-virtual {v0, p1}, Lus/zoom/androidlib/widget/ZMAlertHolder;->setMsg(Ljava/lang/String;)V

    return-object p0
.end method

.method public setMultiChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;
    .locals 0

    .line 748
    iget-object p1, p0, Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lus/zoom/androidlib/widget/ZMAlertHolder;->setType(I)V

    .line 749
    iget-object p1, p0, Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lus/zoom/androidlib/widget/ZMAlertHolder;->setMultiChoice(Z)V

    .line 750
    iget-object p1, p0, Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    invoke-virtual {p1, p3}, Lus/zoom/androidlib/widget/ZMAlertHolder;->setListListener(Landroid/content/DialogInterface$OnClickListener;)V

    return-object p0
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;
    .locals 2

    .line 653
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    invoke-virtual {v0}, Lus/zoom/androidlib/widget/ZMAlertHolder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lus/zoom/androidlib/widget/ZMAlertHolder;->setmNegativeButtonText(Ljava/lang/String;)V

    .line 654
    iget-object p1, p0, Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    invoke-virtual {p1, p2}, Lus/zoom/androidlib/widget/ZMAlertHolder;->setNegativeButtonListener(Landroid/content/DialogInterface$OnClickListener;)V

    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;
    .locals 1

    .line 674
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    invoke-virtual {v0, p1}, Lus/zoom/androidlib/widget/ZMAlertHolder;->setmNegativeButtonText(Ljava/lang/String;)V

    .line 675
    iget-object p1, p0, Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    invoke-virtual {p1, p2}, Lus/zoom/androidlib/widget/ZMAlertHolder;->setNegativeButtonListener(Landroid/content/DialogInterface$OnClickListener;)V

    return-object p0
.end method

.method public setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;
    .locals 2

    .line 660
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    invoke-virtual {v0}, Lus/zoom/androidlib/widget/ZMAlertHolder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lus/zoom/androidlib/widget/ZMAlertHolder;->setmNeutralButtonText(Ljava/lang/String;)V

    .line 661
    iget-object p1, p0, Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    invoke-virtual {p1, p2}, Lus/zoom/androidlib/widget/ZMAlertHolder;->setNeutralButtonListener(Landroid/content/DialogInterface$OnClickListener;)V

    return-object p0
.end method

.method public setNeutralButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;
    .locals 1

    .line 681
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    invoke-virtual {v0, p1}, Lus/zoom/androidlib/widget/ZMAlertHolder;->setmNeutralButtonText(Ljava/lang/String;)V

    .line 682
    iget-object p1, p0, Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    invoke-virtual {p1, p2}, Lus/zoom/androidlib/widget/ZMAlertHolder;->setNeutralButtonListener(Landroid/content/DialogInterface$OnClickListener;)V

    return-object p0
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;
    .locals 1

    .line 694
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    invoke-virtual {v0, p1}, Lus/zoom/androidlib/widget/ZMAlertHolder;->setDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-object p0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;
    .locals 1

    .line 667
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    invoke-virtual {v0, p2}, Lus/zoom/androidlib/widget/ZMAlertHolder;->setPositiveButtonListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 668
    iget-object p2, p0, Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    invoke-virtual {p2}, Lus/zoom/androidlib/widget/ZMAlertHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lus/zoom/androidlib/widget/ZMAlertHolder;->setmPositiveButtonText(Ljava/lang/String;)V

    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;
    .locals 1

    .line 688
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    invoke-virtual {v0, p2}, Lus/zoom/androidlib/widget/ZMAlertHolder;->setPositiveButtonListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 689
    iget-object p2, p0, Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    invoke-virtual {p2, p1}, Lus/zoom/androidlib/widget/ZMAlertHolder;->setmPositiveButtonText(Ljava/lang/String;)V

    return-object p0
.end method

.method public setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;
    .locals 1

    .line 756
    iget-object p2, p0, Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lus/zoom/androidlib/widget/ZMAlertHolder;->setSingleChoice(Z)V

    .line 757
    iget-object p2, p0, Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Lus/zoom/androidlib/widget/ZMAlertHolder;->setType(I)V

    .line 758
    iget-object p2, p0, Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    invoke-virtual {p2, p1}, Lus/zoom/androidlib/widget/ZMAlertHolder;->setAdater(Landroid/widget/ListAdapter;)V

    .line 759
    iget-object p1, p0, Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    invoke-virtual {p1, p3}, Lus/zoom/androidlib/widget/ZMAlertHolder;->setListListener(Landroid/content/DialogInterface$OnClickListener;)V

    return-object p0
.end method

.method public setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;
    .locals 2

    .line 737
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lus/zoom/androidlib/widget/ZMAlertHolder;->setType(I)V

    .line 738
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lus/zoom/androidlib/widget/ZMAlertHolder;->setSingleChoice(Z)V

    .line 739
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lus/zoom/androidlib/widget/ZMAlertHolder;->setMultiChoice(Z)V

    .line 740
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    invoke-virtual {v0, p1}, Lus/zoom/androidlib/widget/ZMAlertHolder;->setItems([Ljava/lang/CharSequence;)V

    .line 741
    iget-object p1, p0, Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    invoke-virtual {p1, p2}, Lus/zoom/androidlib/widget/ZMAlertHolder;->setCheckIndex(I)V

    .line 742
    iget-object p1, p0, Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    invoke-virtual {p1, p3}, Lus/zoom/androidlib/widget/ZMAlertHolder;->setListListener(Landroid/content/DialogInterface$OnClickListener;)V

    return-object p0
.end method

.method public setSmallTitleMutlilineStyle(Z)Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;
    .locals 1

    .line 599
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    invoke-virtual {v0, p1}, Lus/zoom/androidlib/widget/ZMAlertHolder;->setSmallTitleMutlilineStyle(Z)V

    return-object p0
.end method

.method public setTheme(I)Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;
    .locals 1

    .line 584
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    invoke-virtual {v0, p1}, Lus/zoom/androidlib/widget/ZMAlertHolder;->setTheme(I)V

    return-object p0
.end method

.method public setTitle(I)Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;
    .locals 2

    if-lez p1, :cond_0

    .line 630
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    invoke-virtual {v0}, Lus/zoom/androidlib/widget/ZMAlertHolder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lus/zoom/androidlib/widget/ZMAlertHolder;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 632
    :cond_0
    iget-object p1, p0, Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lus/zoom/androidlib/widget/ZMAlertHolder;->setTitle(Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;
    .locals 1

    .line 624
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    invoke-virtual {v0, p1}, Lus/zoom/androidlib/widget/ZMAlertHolder;->setTitle(Ljava/lang/String;)V

    return-object p0
.end method

.method public setTitleFontSize(F)Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;
    .locals 1

    .line 604
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    invoke-virtual {v0, p1}, Lus/zoom/androidlib/widget/ZMAlertHolder;->setTitleFontSize(F)V

    return-object p0
.end method

.method public setTitleTxtColor(I)Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;
    .locals 1

    .line 609
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    invoke-virtual {v0, p1}, Lus/zoom/androidlib/widget/ZMAlertHolder;->setTitleTxtColor(I)V

    return-object p0
.end method

.method public setTitleView(Landroid/view/View;)Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;
    .locals 1

    .line 589
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    invoke-virtual {v0, p1}, Lus/zoom/androidlib/widget/ZMAlertHolder;->setTitleView(Landroid/view/View;)V

    return-object p0
.end method

.method public setVerticalOptionStyle(Z)Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;
    .locals 1

    .line 594
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    invoke-virtual {v0, p1}, Lus/zoom/androidlib/widget/ZMAlertHolder;->setVerticalOptionStyle(Z)V

    return-object p0
.end method

.method public setView(Landroid/view/View;)Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 704
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    invoke-virtual {v0, p1}, Lus/zoom/androidlib/widget/ZMAlertHolder;->setmView(Landroid/view/View;)V

    .line 705
    iget-object p1, p0, Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lus/zoom/androidlib/widget/ZMAlertHolder;->setmViewSpacingSpecified(Z)V

    return-object p0
.end method

.method public setView(Landroid/view/View;Z)Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;
    .locals 1

    .line 710
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    invoke-virtual {v0, p1}, Lus/zoom/androidlib/widget/ZMAlertHolder;->setmView(Landroid/view/View;)V

    .line 711
    iget-object p1, p0, Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lus/zoom/androidlib/widget/ZMAlertHolder;->setmViewSpacingSpecified(Z)V

    .line 712
    iget-object p1, p0, Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    invoke-virtual {p1, p2}, Lus/zoom/androidlib/widget/ZMAlertHolder;->setHideBottomGap(Z)V

    return-object p0
.end method

.method public show()V
    .locals 1

    .line 721
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    invoke-virtual {v0}, Lus/zoom/androidlib/widget/ZMAlertHolder;->getDialog()Lus/zoom/androidlib/widget/ZMAlertDialog;

    move-result-object v0

    if-nez v0, :cond_0

    .line 722
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;->create()Lus/zoom/androidlib/widget/ZMAlertDialog;

    .line 724
    :cond_0
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;->holder:Lus/zoom/androidlib/widget/ZMAlertHolder;

    invoke-virtual {v0}, Lus/zoom/androidlib/widget/ZMAlertHolder;->getDialog()Lus/zoom/androidlib/widget/ZMAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/androidlib/widget/ZMAlertDialog;->show()V

    return-void
.end method
