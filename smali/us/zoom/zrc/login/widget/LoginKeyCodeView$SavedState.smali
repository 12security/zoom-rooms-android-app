.class Lus/zoom/zrc/login/widget/LoginKeyCodeView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "LoginKeyCodeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/login/widget/LoginKeyCodeView;
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
            "Lus/zoom/zrc/login/widget/LoginKeyCodeView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private selectPos:I

.field private text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 683
    new-instance v0, Lus/zoom/zrc/login/widget/LoginKeyCodeView$SavedState$1;

    invoke-direct {v0}, Lus/zoom/zrc/login/widget/LoginKeyCodeView$SavedState$1;-><init>()V

    sput-object v0, Lus/zoom/zrc/login/widget/LoginKeyCodeView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 670
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 671
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView$SavedState;->text:Ljava/lang/String;

    .line 672
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView$SavedState;->selectPos:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lus/zoom/zrc/login/widget/LoginKeyCodeView$1;)V
    .locals 0

    .line 660
    invoke-direct {p0, p1}, Lus/zoom/zrc/login/widget/LoginKeyCodeView$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .line 666
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcelable;Lus/zoom/zrc/login/widget/LoginKeyCodeView$1;)V
    .locals 0

    .line 660
    invoke-direct {p0, p1}, Lus/zoom/zrc/login/widget/LoginKeyCodeView$SavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method

.method static synthetic access$300(Lus/zoom/zrc/login/widget/LoginKeyCodeView$SavedState;)Ljava/lang/String;
    .locals 0

    .line 660
    iget-object p0, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView$SavedState;->text:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$302(Lus/zoom/zrc/login/widget/LoginKeyCodeView$SavedState;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 660
    iput-object p1, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView$SavedState;->text:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lus/zoom/zrc/login/widget/LoginKeyCodeView$SavedState;)I
    .locals 0

    .line 660
    iget p0, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView$SavedState;->selectPos:I

    return p0
.end method

.method static synthetic access$402(Lus/zoom/zrc/login/widget/LoginKeyCodeView$SavedState;I)I
    .locals 0

    .line 660
    iput p1, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView$SavedState;->selectPos:I

    return p1
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 677
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 678
    iget-object p2, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView$SavedState;->text:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 679
    iget p2, p0, Lus/zoom/zrc/login/widget/LoginKeyCodeView$SavedState;->selectPos:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
