.class Lus/zoom/zrc/login/widget/ZRCListSearchBox$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "ZRCListSearchBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/login/widget/ZRCListSearchBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lus/zoom/zrc/login/widget/ZRCListSearchBox$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private searching:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 299
    new-instance v0, Lus/zoom/zrc/login/widget/ZRCListSearchBox$SavedState$1;

    invoke-direct {v0}, Lus/zoom/zrc/login/widget/ZRCListSearchBox$SavedState$1;-><init>()V

    sput-object v0, Lus/zoom/zrc/login/widget/ZRCListSearchBox$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 288
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 289
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lus/zoom/zrc/login/widget/ZRCListSearchBox$SavedState;->searching:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lus/zoom/zrc/login/widget/ZRCListSearchBox$1;)V
    .locals 0

    .line 279
    invoke-direct {p0, p1}, Lus/zoom/zrc/login/widget/ZRCListSearchBox$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .line 284
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcelable;Lus/zoom/zrc/login/widget/ZRCListSearchBox$1;)V
    .locals 0

    .line 279
    invoke-direct {p0, p1}, Lus/zoom/zrc/login/widget/ZRCListSearchBox$SavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method

.method static synthetic access$100(Lus/zoom/zrc/login/widget/ZRCListSearchBox$SavedState;)Z
    .locals 0

    .line 279
    iget-boolean p0, p0, Lus/zoom/zrc/login/widget/ZRCListSearchBox$SavedState;->searching:Z

    return p0
.end method

.method static synthetic access$102(Lus/zoom/zrc/login/widget/ZRCListSearchBox$SavedState;Z)Z
    .locals 0

    .line 279
    iput-boolean p1, p0, Lus/zoom/zrc/login/widget/ZRCListSearchBox$SavedState;->searching:Z

    return p1
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 294
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 295
    iget-boolean p2, p0, Lus/zoom/zrc/login/widget/ZRCListSearchBox$SavedState;->searching:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
