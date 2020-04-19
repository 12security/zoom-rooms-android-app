.class public Lus/zoom/androidlib/app/ZMFileListItemView;
.super Landroid/widget/LinearLayout;
.source "ZMFileListItemView.java"


# instance fields
.field private mChecked:Z

.field private mContext:Landroid/content/Context;

.field private mCountOrSize:Landroid/widget/TextView;

.field private mDisplayName:Landroid/widget/TextView;

.field private mFileIndicator:Lus/zoom/androidlib/widget/ZMCheckedTextView;

.field private mFolderIndicator:Landroid/widget/ImageView;

.field private mIcon:Landroid/widget/ImageView;

.field private mLastModifiedDate:Landroid/widget/TextView;

.field private mSeparator:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 31
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lus/zoom/androidlib/app/ZMFileListItemView;->mChecked:Z

    .line 32
    iput-object p1, p0, Lus/zoom/androidlib/app/ZMFileListItemView;->mContext:Landroid/content/Context;

    .line 33
    invoke-direct {p0, p1}, Lus/zoom/androidlib/app/ZMFileListItemView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 28
    iput-boolean p2, p0, Lus/zoom/androidlib/app/ZMFileListItemView;->mChecked:Z

    .line 38
    invoke-direct {p0, p1}, Lus/zoom/androidlib/app/ZMFileListItemView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 28
    iput-boolean p2, p0, Lus/zoom/androidlib/app/ZMFileListItemView;->mChecked:Z

    .line 44
    invoke-direct {p0, p1}, Lus/zoom/androidlib/app/ZMFileListItemView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method private checkSeparator()V
    .locals 2

    .line 110
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMFileListItemView;->mLastModifiedDate:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lus/zoom/androidlib/app/ZMFileListItemView;->mCountOrSize:Landroid/widget/TextView;

    .line 111
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 112
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMFileListItemView;->mSeparator:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 114
    :cond_0
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMFileListItemView;->mSeparator:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 1

    .line 48
    sget v0, Lus/zoom/androidlib/R$layout;->zm_file_list_item:I

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 49
    sget p1, Lus/zoom/androidlib/R$id;->txtFileName:I

    invoke-virtual {p0, p1}, Lus/zoom/androidlib/app/ZMFileListItemView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lus/zoom/androidlib/app/ZMFileListItemView;->mDisplayName:Landroid/widget/TextView;

    .line 50
    sget p1, Lus/zoom/androidlib/R$id;->fileIcon:I

    invoke-virtual {p0, p1}, Lus/zoom/androidlib/app/ZMFileListItemView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lus/zoom/androidlib/app/ZMFileListItemView;->mIcon:Landroid/widget/ImageView;

    .line 51
    sget p1, Lus/zoom/androidlib/R$id;->folderIndicator:I

    invoke-virtual {p0, p1}, Lus/zoom/androidlib/app/ZMFileListItemView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lus/zoom/androidlib/app/ZMFileListItemView;->mFolderIndicator:Landroid/widget/ImageView;

    .line 52
    sget p1, Lus/zoom/androidlib/R$id;->txtFileSize:I

    invoke-virtual {p0, p1}, Lus/zoom/androidlib/app/ZMFileListItemView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lus/zoom/androidlib/app/ZMFileListItemView;->mCountOrSize:Landroid/widget/TextView;

    .line 53
    sget p1, Lus/zoom/androidlib/R$id;->txtDate:I

    invoke-virtual {p0, p1}, Lus/zoom/androidlib/app/ZMFileListItemView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lus/zoom/androidlib/app/ZMFileListItemView;->mLastModifiedDate:Landroid/widget/TextView;

    .line 54
    sget p1, Lus/zoom/androidlib/R$id;->separator:I

    invoke-virtual {p0, p1}, Lus/zoom/androidlib/app/ZMFileListItemView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lus/zoom/androidlib/app/ZMFileListItemView;->mSeparator:Landroid/widget/TextView;

    .line 55
    sget p1, Lus/zoom/androidlib/R$id;->check:I

    invoke-virtual {p0, p1}, Lus/zoom/androidlib/app/ZMFileListItemView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lus/zoom/androidlib/widget/ZMCheckedTextView;

    iput-object p1, p0, Lus/zoom/androidlib/app/ZMFileListItemView;->mFileIndicator:Lus/zoom/androidlib/widget/ZMCheckedTextView;

    return-void
.end method


# virtual methods
.method public setChildrenCount(I)V
    .locals 1

    .line 79
    iget-object p1, p0, Lus/zoom/androidlib/app/ZMFileListItemView;->mCountOrSize:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 80
    invoke-direct {p0}, Lus/zoom/androidlib/app/ZMFileListItemView;->checkSeparator()V

    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    .line 60
    iget-object p1, p0, Lus/zoom/androidlib/app/ZMFileListItemView;->mDisplayName:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 62
    :cond_0
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMFileListItemView;->mDisplayName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public setFileSize(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    .line 87
    iget-object p1, p0, Lus/zoom/androidlib/app/ZMFileListItemView;->mCountOrSize:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 89
    :cond_0
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMFileListItemView;->mCountOrSize:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 90
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMFileListItemView;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lus/zoom/androidlib/util/FileUtils;->toFileSizeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    .line 91
    iget-object p2, p0, Lus/zoom/androidlib/app/ZMFileListItemView;->mCountOrSize:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    :goto_0
    invoke-direct {p0}, Lus/zoom/androidlib/app/ZMFileListItemView;->checkSeparator()V

    return-void
.end method

.method public setFolderIndicatorVisible(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 72
    iget-object p1, p0, Lus/zoom/androidlib/app/ZMFileListItemView;->mFolderIndicator:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 74
    :cond_0
    iget-object p1, p0, Lus/zoom/androidlib/app/ZMFileListItemView;->mFolderIndicator:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setIcon(I)V
    .locals 1

    .line 67
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMFileListItemView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setItemChecked(Z)V
    .locals 1

    .line 127
    iput-boolean p1, p0, Lus/zoom/androidlib/app/ZMFileListItemView;->mChecked:Z

    .line 128
    iget-boolean p1, p0, Lus/zoom/androidlib/app/ZMFileListItemView;->mChecked:Z

    if-eqz p1, :cond_0

    .line 129
    iget-object p1, p0, Lus/zoom/androidlib/app/ZMFileListItemView;->mFileIndicator:Lus/zoom/androidlib/widget/ZMCheckedTextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lus/zoom/androidlib/widget/ZMCheckedTextView;->setVisibility(I)V

    .line 130
    iget-object p1, p0, Lus/zoom/androidlib/app/ZMFileListItemView;->mFileIndicator:Lus/zoom/androidlib/widget/ZMCheckedTextView;

    iget-boolean v0, p0, Lus/zoom/androidlib/app/ZMFileListItemView;->mChecked:Z

    invoke-virtual {p1, v0}, Lus/zoom/androidlib/widget/ZMCheckedTextView;->setChecked(Z)V

    goto :goto_0

    .line 132
    :cond_0
    iget-object p1, p0, Lus/zoom/androidlib/app/ZMFileListItemView;->mFileIndicator:Lus/zoom/androidlib/widget/ZMCheckedTextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lus/zoom/androidlib/widget/ZMCheckedTextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setLastModified(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    .line 99
    iget-object p1, p0, Lus/zoom/androidlib/app/ZMFileListItemView;->mLastModifiedDate:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 100
    invoke-direct {p0}, Lus/zoom/androidlib/app/ZMFileListItemView;->checkSeparator()V

    return-void

    .line 104
    :cond_0
    iget-object v0, p0, Lus/zoom/androidlib/app/ZMFileListItemView;->mLastModifiedDate:Landroid/widget/TextView;

    iget-object v1, p0, Lus/zoom/androidlib/app/ZMFileListItemView;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Lus/zoom/androidlib/util/TimeUtil;->formatDateWithYear(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object p1, p0, Lus/zoom/androidlib/app/ZMFileListItemView;->mLastModifiedDate:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 106
    invoke-direct {p0}, Lus/zoom/androidlib/app/ZMFileListItemView;->checkSeparator()V

    return-void
.end method
