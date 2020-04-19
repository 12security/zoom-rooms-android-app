.class public Lus/zoom/androidlib/util/CountryCodeUtil;
.super Ljava/lang/Object;
.source "CountryCodeUtil.java"


# static fields
.field public static final CN_ISO_COUNTRY_CODE:Ljava/lang/String; = "CN"

.field public static final US_COUNTRY_CODE:Ljava/lang/String; = "1"

.field public static final US_ISO_COUNTRY_CODE:Ljava/lang/String; = "US"

.field public static final countryCodeTable:[[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const/16 v0, 0xe9

    .line 10
    new-array v1, v0, [[Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "AF"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/16 v4, 0x5d

    .line 11
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v3, v7

    aput-object v3, v1, v5

    new-array v3, v2, [Ljava/lang/Object;

    const-string v6, "AL"

    aput-object v6, v3, v5

    const/16 v6, 0x163

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v7

    aput-object v3, v1, v7

    new-array v3, v2, [Ljava/lang/Object;

    const-string v6, "DZ"

    aput-object v6, v3, v5

    const/16 v6, 0xd5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v7

    aput-object v3, v1, v2

    new-array v3, v2, [Ljava/lang/Object;

    const-string v8, "AS"

    aput-object v8, v3, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v7

    const/4 v8, 0x3

    aput-object v3, v1, v8

    new-array v3, v2, [Ljava/lang/Object;

    const-string v8, "AD"

    aput-object v8, v3, v5

    const/16 v8, 0x178

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v7

    const/4 v8, 0x4

    aput-object v3, v1, v8

    new-array v3, v2, [Ljava/lang/Object;

    const-string v8, "AO"

    aput-object v8, v3, v5

    const/16 v8, 0xf4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v7

    const/4 v8, 0x5

    aput-object v3, v1, v8

    new-array v3, v2, [Ljava/lang/Object;

    const-string v8, "AI"

    aput-object v8, v3, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v7

    const/4 v8, 0x6

    aput-object v3, v1, v8

    new-array v3, v2, [Ljava/lang/Object;

    const-string v8, "AQ"

    aput-object v8, v3, v5

    const/16 v8, 0x2a0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v3, v7

    const/4 v9, 0x7

    aput-object v3, v1, v9

    new-array v3, v2, [Ljava/lang/Object;

    const-string v10, "AG"

    aput-object v10, v3, v5

    .line 12
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v3, v7

    const/16 v10, 0x8

    aput-object v3, v1, v10

    new-array v3, v2, [Ljava/lang/Object;

    const-string v10, "AR"

    aput-object v10, v3, v5

    const/16 v10, 0x36

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v3, v7

    const/16 v11, 0x9

    aput-object v3, v1, v11

    new-array v3, v2, [Ljava/lang/Object;

    const-string v11, "AM"

    aput-object v11, v3, v5

    const/16 v11, 0x176

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v3, v7

    const/16 v11, 0xa

    aput-object v3, v1, v11

    new-array v3, v2, [Ljava/lang/Object;

    const-string v11, "AW"

    aput-object v11, v3, v5

    const/16 v11, 0x129

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v3, v7

    const/16 v11, 0xb

    aput-object v3, v1, v11

    new-array v3, v2, [Ljava/lang/Object;

    const-string v11, "AU"

    aput-object v11, v3, v5

    const/16 v11, 0x3d

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v3, v7

    const/16 v12, 0xc

    aput-object v3, v1, v12

    new-array v3, v2, [Ljava/lang/Object;

    const-string v12, "AT"

    aput-object v12, v3, v5

    const/16 v12, 0x2b

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v3, v7

    const/16 v13, 0xd

    aput-object v3, v1, v13

    new-array v3, v2, [Ljava/lang/Object;

    const-string v13, "AZ"

    aput-object v13, v3, v5

    const/16 v13, 0x3e2

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v3, v7

    const/16 v13, 0xe

    aput-object v3, v1, v13

    new-array v3, v2, [Ljava/lang/Object;

    const-string v13, "BS"

    aput-object v13, v3, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v3, v7

    const/16 v13, 0xf

    aput-object v3, v1, v13

    new-array v3, v2, [Ljava/lang/Object;

    const-string v13, "BH"

    aput-object v13, v3, v5

    const/16 v13, 0x3cd

    .line 13
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v3, v7

    const/16 v13, 0x10

    aput-object v3, v1, v13

    new-array v3, v2, [Ljava/lang/Object;

    const-string v13, "BD"

    aput-object v13, v3, v5

    const/16 v13, 0x370

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v3, v7

    const/16 v13, 0x11

    aput-object v3, v1, v13

    new-array v3, v2, [Ljava/lang/Object;

    const-string v13, "BB"

    aput-object v13, v3, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v3, v7

    const/16 v13, 0x12

    aput-object v3, v1, v13

    new-array v3, v2, [Ljava/lang/Object;

    const-string v13, "BY"

    aput-object v13, v3, v5

    const/16 v13, 0x177

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v3, v7

    const/16 v13, 0x13

    aput-object v3, v1, v13

    new-array v3, v2, [Ljava/lang/Object;

    const-string v13, "BE"

    aput-object v13, v3, v5

    const/16 v13, 0x20

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v3, v7

    const/16 v14, 0x14

    aput-object v3, v1, v14

    new-array v3, v2, [Ljava/lang/Object;

    const-string v15, "BZ"

    aput-object v15, v3, v5

    const/16 v15, 0x1f5

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v3, v7

    const/16 v15, 0x15

    aput-object v3, v1, v15

    new-array v3, v2, [Ljava/lang/Object;

    const-string v15, "BJ"

    aput-object v15, v3, v5

    const/16 v15, 0xe5

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v3, v7

    const/16 v15, 0x16

    aput-object v3, v1, v15

    new-array v3, v2, [Ljava/lang/Object;

    const-string v15, "BM"

    aput-object v15, v3, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v3, v7

    const/16 v15, 0x17

    aput-object v3, v1, v15

    new-array v3, v2, [Ljava/lang/Object;

    const-string v15, "BT"

    aput-object v15, v3, v5

    const/16 v15, 0x3cf

    .line 14
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v3, v7

    const/16 v15, 0x18

    aput-object v3, v1, v15

    new-array v3, v2, [Ljava/lang/Object;

    const-string v15, "BO"

    aput-object v15, v3, v5

    const/16 v15, 0x24f

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v3, v7

    const/16 v15, 0x19

    aput-object v3, v1, v15

    new-array v3, v2, [Ljava/lang/Object;

    const-string v15, "BA"

    aput-object v15, v3, v5

    const/16 v15, 0x183

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v3, v7

    const/16 v15, 0x1a

    aput-object v3, v1, v15

    new-array v3, v2, [Ljava/lang/Object;

    const-string v15, "BW"

    aput-object v15, v3, v5

    const/16 v15, 0x10b

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v3, v7

    const/16 v15, 0x1b

    aput-object v3, v1, v15

    new-array v3, v2, [Ljava/lang/Object;

    const-string v15, "BR"

    aput-object v15, v3, v5

    const/16 v15, 0x37

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v3, v7

    const/16 v15, 0x1c

    aput-object v3, v1, v15

    new-array v3, v2, [Ljava/lang/Object;

    const-string v15, "VG"

    aput-object v15, v3, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v3, v7

    const/16 v15, 0x1d

    aput-object v3, v1, v15

    new-array v3, v2, [Ljava/lang/Object;

    const-string v15, "BN"

    aput-object v15, v3, v5

    const/16 v15, 0x2a1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v3, v7

    const/16 v15, 0x1e

    aput-object v3, v1, v15

    new-array v3, v2, [Ljava/lang/Object;

    const-string v15, "BG"

    aput-object v15, v3, v5

    const/16 v15, 0x167

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v3, v7

    const/16 v15, 0x1f

    aput-object v3, v1, v15

    new-array v3, v2, [Ljava/lang/Object;

    const-string v15, "BF"

    aput-object v15, v3, v5

    const/16 v15, 0xe2

    .line 15
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v3, v7

    aput-object v3, v1, v13

    new-array v3, v2, [Ljava/lang/Object;

    const-string v13, "BI"

    aput-object v13, v3, v5

    const/16 v13, 0x101

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v3, v7

    const/16 v13, 0x21

    aput-object v3, v1, v13

    new-array v3, v2, [Ljava/lang/Object;

    const-string v13, "KH"

    aput-object v13, v3, v5

    const/16 v13, 0x357

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v3, v7

    const/16 v13, 0x22

    aput-object v3, v1, v13

    new-array v3, v2, [Ljava/lang/Object;

    const-string v13, "CM"

    aput-object v13, v3, v5

    const/16 v13, 0xed

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v3, v7

    const/16 v13, 0x23

    aput-object v3, v1, v13

    new-array v3, v2, [Ljava/lang/Object;

    const-string v13, "CA"

    aput-object v13, v3, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v3, v7

    const/16 v13, 0x24

    aput-object v3, v1, v13

    new-array v3, v2, [Ljava/lang/Object;

    const-string v13, "CV"

    aput-object v13, v3, v5

    const/16 v13, 0xee

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v3, v7

    const/16 v13, 0x25

    aput-object v3, v1, v13

    new-array v3, v2, [Ljava/lang/Object;

    const-string v13, "KY"

    aput-object v13, v3, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v3, v7

    const/16 v13, 0x26

    aput-object v3, v1, v13

    new-array v3, v2, [Ljava/lang/Object;

    const-string v13, "CF"

    aput-object v13, v3, v5

    const/16 v13, 0xec

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v3, v7

    const/16 v13, 0x27

    aput-object v3, v1, v13

    new-array v3, v2, [Ljava/lang/Object;

    const-string v15, "TD"

    aput-object v15, v3, v5

    const/16 v15, 0xeb

    .line 16
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v3, v7

    const/16 v15, 0x28

    aput-object v3, v1, v15

    new-array v3, v2, [Ljava/lang/Object;

    const-string v15, "CL"

    aput-object v15, v3, v5

    const/16 v15, 0x38

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v3, v7

    const/16 v15, 0x29

    aput-object v3, v1, v15

    new-array v3, v2, [Ljava/lang/Object;

    const-string v15, "CN"

    aput-object v15, v3, v5

    const/16 v15, 0x56

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v3, v7

    const/16 v15, 0x2a

    aput-object v3, v1, v15

    new-array v3, v2, [Ljava/lang/Object;

    const-string v15, "CO"

    aput-object v15, v3, v5

    const/16 v15, 0x39

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v3, v7

    aput-object v3, v1, v12

    new-array v3, v2, [Ljava/lang/Object;

    const-string v12, "KM"

    aput-object v12, v3, v5

    const/16 v12, 0x10d

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v3, v7

    const/16 v12, 0x2c

    aput-object v3, v1, v12

    new-array v3, v2, [Ljava/lang/Object;

    const-string v15, "CG"

    aput-object v15, v3, v5

    const/16 v15, 0xf2

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v3, v7

    const/16 v15, 0x2d

    aput-object v3, v1, v15

    new-array v3, v2, [Ljava/lang/Object;

    const-string v15, "CK"

    aput-object v15, v3, v5

    const/16 v15, 0x2aa

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v3, v7

    const/16 v15, 0x2e

    aput-object v3, v1, v15

    new-array v3, v2, [Ljava/lang/Object;

    const-string v15, "CR"

    aput-object v15, v3, v5

    const/16 v15, 0x1fa

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v3, v7

    const/16 v15, 0x2f

    aput-object v3, v1, v15

    new-array v3, v2, [Ljava/lang/Object;

    const-string v15, "HR"

    aput-object v15, v3, v5

    const/16 v15, 0x181

    .line 17
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v3, v7

    const/16 v15, 0x30

    aput-object v3, v1, v15

    new-array v3, v2, [Ljava/lang/Object;

    const-string v15, "CU"

    aput-object v15, v3, v5

    const/16 v15, 0x35

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v3, v7

    const/16 v15, 0x31

    aput-object v3, v1, v15

    new-array v3, v2, [Ljava/lang/Object;

    const-string v15, "CY"

    aput-object v15, v3, v5

    const/16 v15, 0x165

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v3, v7

    const/16 v15, 0x32

    aput-object v3, v1, v15

    new-array v3, v2, [Ljava/lang/Object;

    const-string v15, "CZ"

    aput-object v15, v3, v5

    const/16 v15, 0x1a4

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v3, v7

    const/16 v15, 0x33

    aput-object v3, v1, v15

    new-array v3, v2, [Ljava/lang/Object;

    const-string v15, "DK"

    aput-object v15, v3, v5

    const/16 v15, 0x2d

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v3, v7

    const/16 v15, 0x34

    aput-object v3, v1, v15

    new-array v3, v2, [Ljava/lang/Object;

    const-string v15, "DJ"

    aput-object v15, v3, v5

    const/16 v15, 0xfd

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v3, v7

    const/16 v15, 0x35

    aput-object v3, v1, v15

    new-array v3, v2, [Ljava/lang/Object;

    const-string v15, "DM"

    aput-object v15, v3, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v3, v7

    aput-object v3, v1, v10

    new-array v3, v2, [Ljava/lang/Object;

    const-string v10, "DO"

    aput-object v10, v3, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v3, v7

    const/16 v10, 0x37

    aput-object v3, v1, v10

    new-array v3, v2, [Ljava/lang/Object;

    const-string v10, "EC"

    aput-object v10, v3, v5

    const/16 v10, 0x251

    .line 18
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v3, v7

    const/16 v10, 0x38

    aput-object v3, v1, v10

    new-array v3, v2, [Ljava/lang/Object;

    const-string v10, "EG"

    aput-object v10, v3, v5

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v3, v7

    const/16 v10, 0x39

    aput-object v3, v1, v10

    new-array v3, v2, [Ljava/lang/Object;

    const-string v10, "SV"

    aput-object v10, v3, v5

    const/16 v10, 0x1f7

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v3, v7

    const/16 v10, 0x3a

    aput-object v3, v1, v10

    new-array v3, v2, [Ljava/lang/Object;

    const-string v10, "GQ"

    aput-object v10, v3, v5

    const/16 v10, 0xf0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v3, v7

    const/16 v10, 0x3b

    aput-object v3, v1, v10

    new-array v3, v2, [Ljava/lang/Object;

    const-string v10, "ER"

    aput-object v10, v3, v5

    const/16 v10, 0x123

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v3, v7

    const/16 v10, 0x3c

    aput-object v3, v1, v10

    new-array v3, v2, [Ljava/lang/Object;

    const-string v10, "EE"

    aput-object v10, v3, v5

    const/16 v10, 0x174

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v3, v7

    aput-object v3, v1, v11

    new-array v3, v2, [Ljava/lang/Object;

    const-string v10, "ET"

    aput-object v10, v3, v5

    const/16 v10, 0xfb

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v3, v7

    const/16 v10, 0x3e

    aput-object v3, v1, v10

    new-array v3, v2, [Ljava/lang/Object;

    const-string v10, "FK"

    aput-object v10, v3, v5

    const/16 v10, 0x1f4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v3, v7

    const/16 v10, 0x3f

    aput-object v3, v1, v10

    new-array v3, v2, [Ljava/lang/Object;

    const-string v10, "FJ"

    aput-object v10, v3, v5

    const/16 v10, 0x2a7

    .line 19
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v3, v7

    const/16 v10, 0x40

    aput-object v3, v1, v10

    new-array v3, v2, [Ljava/lang/Object;

    const-string v10, "FI"

    aput-object v10, v3, v5

    const/16 v10, 0x166

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v3, v7

    const/16 v10, 0x41

    aput-object v3, v1, v10

    new-array v3, v2, [Ljava/lang/Object;

    const-string v10, "FR"

    aput-object v10, v3, v5

    const/16 v10, 0x21

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v3, v7

    const/16 v10, 0x42

    aput-object v3, v1, v10

    new-array v3, v2, [Ljava/lang/Object;

    const-string v10, "GF"

    aput-object v10, v3, v5

    const/16 v10, 0x252

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v3, v7

    const/16 v10, 0x43

    aput-object v3, v1, v10

    new-array v3, v2, [Ljava/lang/Object;

    const-string v10, "PF"

    aput-object v10, v3, v5

    const/16 v10, 0x2b1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v3, v7

    const/16 v10, 0x44

    aput-object v3, v1, v10

    new-array v3, v2, [Ljava/lang/Object;

    const-string v10, "GA"

    aput-object v10, v3, v5

    const/16 v10, 0xf1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v3, v7

    const/16 v10, 0x45

    aput-object v3, v1, v10

    new-array v3, v2, [Ljava/lang/Object;

    const-string v10, "GM"

    aput-object v10, v3, v5

    const/16 v10, 0xdc

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v3, v7

    const/16 v10, 0x46

    aput-object v3, v1, v10

    new-array v3, v2, [Ljava/lang/Object;

    const-string v10, "GE"

    aput-object v10, v3, v5

    const/16 v10, 0x3e3

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v3, v7

    const/16 v10, 0x47

    aput-object v3, v1, v10

    new-array v3, v2, [Ljava/lang/Object;

    const-string v10, "DE"

    aput-object v10, v3, v5

    const/16 v10, 0x31

    .line 20
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v3, v7

    const/16 v10, 0x48

    aput-object v3, v1, v10

    new-array v3, v2, [Ljava/lang/Object;

    const-string v10, "GH"

    aput-object v10, v3, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v7

    const/16 v0, 0x49

    aput-object v3, v1, v0

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "GI"

    aput-object v3, v0, v5

    const/16 v3, 0x15e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0x4a

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "GR"

    aput-object v3, v0, v5

    const/16 v3, 0x1e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0x4b

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "GL"

    aput-object v3, v0, v5

    const/16 v3, 0x12b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0x4c

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "GD"

    aput-object v3, v0, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0x4d

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "GP"

    aput-object v3, v0, v5

    const/16 v3, 0x24e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0x4e

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "GT"

    aput-object v3, v0, v5

    const/16 v3, 0x1f6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0x4f

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "GN"

    aput-object v3, v0, v5

    const/16 v3, 0xe0

    .line 21
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0x50

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "GW"

    aput-object v3, v0, v5

    const/16 v3, 0xf5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0x51

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "GY"

    aput-object v3, v0, v5

    const/16 v3, 0x250

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0x52

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "HT"

    aput-object v3, v0, v5

    const/16 v3, 0x1fd

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0x53

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "HN"

    aput-object v3, v0, v5

    const/16 v3, 0x1f8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0x54

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "HK"

    aput-object v3, v0, v5

    const/16 v3, 0x354

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0x55

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "HU"

    aput-object v3, v0, v5

    const/16 v3, 0x24

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0x56

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "IS"

    aput-object v3, v0, v5

    const/16 v3, 0x162

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0x57

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "IN"

    aput-object v3, v0, v5

    const/16 v3, 0x5b

    .line 22
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0x58

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "ID"

    aput-object v3, v0, v5

    const/16 v3, 0x3e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0x59

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "IR"

    aput-object v3, v0, v5

    const/16 v3, 0x62

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0x5a

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "IQ"

    aput-object v3, v0, v5

    const/16 v3, 0x3c4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0x5b

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "IE"

    aput-object v3, v0, v5

    const/16 v3, 0x161

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0x5c

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "IL"

    aput-object v3, v0, v5

    const/16 v3, 0x3cc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    aput-object v0, v1, v4

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "IT"

    aput-object v3, v0, v5

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0x5e

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "CI"

    aput-object v3, v0, v5

    const/16 v3, 0xe1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0x5f

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "JM"

    aput-object v3, v0, v5

    .line 23
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0x60

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "JP"

    aput-object v3, v0, v5

    const/16 v3, 0x51

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0x61

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "JO"

    aput-object v3, v0, v5

    const/16 v3, 0x3c2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0x62

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "KZ"

    aput-object v3, v0, v5

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0x63

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "KE"

    aput-object v3, v0, v5

    const/16 v3, 0xfe

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0x64

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "KI"

    aput-object v3, v0, v5

    const/16 v3, 0x2ae

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0x65

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "KP"

    aput-object v3, v0, v5

    const/16 v3, 0x352

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0x66

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "KR"

    aput-object v3, v0, v5

    const/16 v3, 0x52

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0x67

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "KW"

    aput-object v3, v0, v5

    const/16 v3, 0x3c5

    .line 24
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0x68

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "KG"

    aput-object v3, v0, v5

    const/16 v3, 0x3e4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0x69

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "LA"

    aput-object v3, v0, v5

    const/16 v3, 0x358

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0x6a

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "LV"

    aput-object v3, v0, v5

    const/16 v3, 0x173

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0x6b

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "LB"

    aput-object v3, v0, v5

    const/16 v3, 0x3c1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0x6c

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "LS"

    aput-object v3, v0, v5

    const/16 v3, 0x10a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0x6d

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "LR"

    aput-object v3, v0, v5

    const/16 v3, 0xe7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0x6e

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "LY"

    aput-object v3, v0, v5

    const/16 v3, 0xda

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0x6f

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "LI"

    aput-object v3, v0, v5

    const/16 v3, 0x1a7

    .line 25
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0x70

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "LT"

    aput-object v3, v0, v5

    const/16 v3, 0x172

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0x71

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "LU"

    aput-object v3, v0, v5

    const/16 v3, 0x160

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0x72

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "MO"

    aput-object v3, v0, v5

    const/16 v3, 0x355

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0x73

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "MK"

    aput-object v3, v0, v5

    const/16 v3, 0x185

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0x74

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "MG"

    aput-object v3, v0, v5

    const/16 v3, 0x105

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0x75

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "MW"

    aput-object v3, v0, v5

    const/16 v3, 0x109

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0x76

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "MY"

    aput-object v3, v0, v5

    const/16 v3, 0x3c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0x77

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "MV"

    aput-object v3, v0, v5

    const/16 v3, 0x3c0

    .line 26
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0x78

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "ML"

    aput-object v3, v0, v5

    const/16 v3, 0xdf

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0x79

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "MT"

    aput-object v3, v0, v5

    const/16 v3, 0x164

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0x7a

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "MH"

    aput-object v3, v0, v5

    const/16 v3, 0x2b4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0x7b

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "MR"

    aput-object v3, v0, v5

    const/16 v3, 0xde

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0x7c

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "MU"

    aput-object v3, v0, v5

    const/16 v3, 0xe6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0x7d

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "YT"

    aput-object v3, v0, v5

    const/16 v3, 0x10d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0x7e

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "MX"

    aput-object v3, v0, v5

    const/16 v3, 0x34

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0x7f

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "FM"

    aput-object v3, v0, v5

    const/16 v3, 0x2b3

    .line 27
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0x80

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "MD"

    aput-object v3, v0, v5

    const/16 v3, 0x175

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0x81

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "MC"

    aput-object v3, v0, v5

    const/16 v3, 0x179

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0x82

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "MN"

    aput-object v3, v0, v5

    const/16 v3, 0x3d0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0x83

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "MA"

    aput-object v3, v0, v5

    const/16 v3, 0xd4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0x84

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "MZ"

    aput-object v3, v0, v5

    const/16 v3, 0x102

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0x85

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "MM"

    aput-object v3, v0, v5

    const/16 v3, 0x5f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0x86

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "NA"

    aput-object v3, v0, v5

    const/16 v3, 0x108

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0x87

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "NR"

    aput-object v3, v0, v5

    const/16 v3, 0x2a2

    .line 28
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0x88

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "NP"

    aput-object v3, v0, v5

    const/16 v3, 0x3d1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0x89

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "NL"

    aput-object v3, v0, v5

    const/16 v3, 0x1f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0x8a

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "AN"

    aput-object v3, v0, v5

    const/16 v3, 0x257

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0x8b

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "NC"

    aput-object v3, v0, v5

    const/16 v3, 0x2af

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0x8c

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "NZ"

    aput-object v3, v0, v5

    const/16 v3, 0x40

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0x8d

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "NI"

    aput-object v3, v0, v5

    const/16 v3, 0x1f9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0x8e

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "NE"

    aput-object v3, v0, v5

    const/16 v3, 0xe3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0x8f

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "NU"

    aput-object v3, v0, v5

    const/16 v3, 0x2ab

    .line 29
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0x90

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "NF"

    aput-object v3, v0, v5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0x91

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "MP"

    aput-object v3, v0, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0x92

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "NO"

    aput-object v3, v0, v5

    const/16 v3, 0x2f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0x93

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "OM"

    aput-object v3, v0, v5

    const/16 v3, 0x3c8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0x94

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "PK"

    aput-object v3, v0, v5

    const/16 v3, 0x5c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0x95

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "PW"

    aput-object v3, v0, v5

    const/16 v3, 0x2a8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0x96

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "PA"

    aput-object v3, v0, v5

    const/16 v3, 0x1fb

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0x97

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "PG"

    aput-object v3, v0, v5

    const/16 v3, 0x2a3

    .line 30
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0x98

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "PY"

    aput-object v3, v0, v5

    const/16 v3, 0x253

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0x99

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "PE"

    aput-object v3, v0, v5

    const/16 v3, 0x33

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0x9a

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "PH"

    aput-object v3, v0, v5

    const/16 v3, 0x3f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0x9b

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "PL"

    aput-object v3, v0, v5

    const/16 v3, 0x30

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0x9c

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "PT"

    aput-object v3, v0, v5

    const/16 v3, 0x15f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0x9d

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "QA"

    aput-object v3, v0, v5

    const/16 v3, 0x3ce

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0x9e

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "RO"

    aput-object v3, v0, v5

    const/16 v3, 0x28

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0x9f

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "RU"

    aput-object v3, v0, v5

    .line 31
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0xa0

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "RW"

    aput-object v3, v0, v5

    const/16 v3, 0xfa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0xa1

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "SM"

    aput-object v3, v0, v5

    const/16 v3, 0x17a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0xa2

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "ST"

    aput-object v3, v0, v5

    const/16 v3, 0xef

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0xa3

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "SA"

    aput-object v3, v0, v5

    const/16 v3, 0x3c6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0xa4

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "SN"

    aput-object v3, v0, v5

    const/16 v3, 0xdd

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0xa5

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "SC"

    aput-object v3, v0, v5

    const/16 v3, 0xf8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0xa6

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "SL"

    aput-object v3, v0, v5

    const/16 v3, 0xe8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0xa7

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "SG"

    aput-object v3, v0, v5

    const/16 v3, 0x41

    .line 32
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0xa8

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "SK"

    aput-object v3, v0, v5

    const/16 v3, 0x1a5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0xa9

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "SI"

    aput-object v3, v0, v5

    const/16 v3, 0x182

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0xaa

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "SB"

    aput-object v3, v0, v5

    const/16 v3, 0x2a5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0xab

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "SO"

    aput-object v3, v0, v5

    const/16 v3, 0xfc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0xac

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "ZA"

    aput-object v3, v0, v5

    const/16 v3, 0x1b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0xad

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "ES"

    aput-object v3, v0, v5

    const/16 v3, 0x22

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0xae

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "LK"

    aput-object v3, v0, v5

    const/16 v3, 0x5e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0xaf

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "SH"

    aput-object v3, v0, v5

    const/16 v3, 0x122

    .line 33
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0xb0

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "KN"

    aput-object v3, v0, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0xb1

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "LC"

    aput-object v3, v0, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0xb2

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "PM"

    aput-object v3, v0, v5

    const/16 v3, 0x1fc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0xb3

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "VC"

    aput-object v3, v0, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0xb4

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "SD"

    aput-object v3, v0, v5

    const/16 v3, 0xf9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0xb5

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "SR"

    aput-object v3, v0, v5

    const/16 v3, 0x255

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0xb6

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "SZ"

    aput-object v3, v0, v5

    const/16 v3, 0x10c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0xb7

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "SE"

    aput-object v3, v0, v5

    const/16 v3, 0x2e

    .line 34
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0xb8

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "CH"

    aput-object v3, v0, v5

    const/16 v3, 0x29

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0xb9

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "SY"

    aput-object v3, v0, v5

    const/16 v3, 0x3c3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0xba

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "TW"

    aput-object v3, v0, v5

    const/16 v3, 0x376

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0xbb

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "TJ"

    aput-object v3, v0, v5

    const/16 v3, 0x3e0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0xbc

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "TZ"

    aput-object v3, v0, v5

    const/16 v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0xbd

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "TH"

    aput-object v3, v0, v5

    const/16 v3, 0x42

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0xbe

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "TG"

    aput-object v3, v0, v5

    const/16 v3, 0xe4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0xbf

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "TO"

    aput-object v3, v0, v5

    const/16 v3, 0x2a4

    .line 35
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0xc0

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "TT"

    aput-object v3, v0, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0xc1

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "TN"

    aput-object v3, v0, v5

    const/16 v3, 0xd8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0xc2

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "TR"

    aput-object v3, v0, v5

    const/16 v3, 0x5a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0xc3

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "TM"

    aput-object v3, v0, v5

    const/16 v3, 0x3e1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0xc4

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "TC"

    aput-object v3, v0, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0xc5

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "TV"

    aput-object v3, v0, v5

    const/16 v3, 0x2b0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0xc6

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "UG"

    aput-object v3, v0, v5

    const/16 v3, 0x100

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0xc7

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "UA"

    aput-object v3, v0, v5

    const/16 v3, 0x17c

    .line 36
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0xc8

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "AE"

    aput-object v3, v0, v5

    const/16 v3, 0x3cb

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0xc9

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "GB"

    aput-object v3, v0, v5

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0xca

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "US"

    aput-object v3, v0, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0xcb

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "UY"

    aput-object v3, v0, v5

    const/16 v3, 0x256

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0xcc

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "UZ"

    aput-object v3, v0, v5

    const/16 v3, 0x3e6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0xcd

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "VU"

    aput-object v3, v0, v5

    const/16 v3, 0x2a6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0xce

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "VA"

    aput-object v3, v0, v5

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0xcf

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "VE"

    aput-object v3, v0, v5

    const/16 v3, 0x3a

    .line 37
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0xd0

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "VN"

    aput-object v3, v0, v5

    const/16 v3, 0x54

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0xd1

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "WF"

    aput-object v3, v0, v5

    const/16 v3, 0x2a9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0xd2

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "WS"

    aput-object v3, v0, v5

    const/16 v3, 0x2ad

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0xd3

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "YE"

    aput-object v3, v0, v5

    const/16 v3, 0x3c7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0xd4

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "ZM"

    aput-object v3, v0, v5

    const/16 v3, 0x104

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    aput-object v0, v1, v6

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "ZW"

    aput-object v3, v0, v5

    const/16 v3, 0x107

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0xd6

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "RS"

    aput-object v3, v0, v5

    const/16 v3, 0x17d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0xd7

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "PR"

    aput-object v3, v0, v5

    .line 38
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0xd8

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "NG"

    aput-object v3, v0, v5

    const/16 v3, 0xea

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0xd9

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "CX"

    aput-object v3, v0, v5

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0xda

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "CC"

    aput-object v3, v0, v5

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0xdb

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "CD"

    aput-object v3, v0, v5

    const/16 v3, 0xf3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0xdc

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "FO"

    aput-object v3, v0, v5

    const/16 v3, 0x12a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0xdd

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "GU"

    aput-object v3, v0, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0xde

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "IM"

    aput-object v3, v0, v5

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0xdf

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "ME"

    aput-object v3, v0, v5

    const/16 v3, 0x17e

    .line 39
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0xe0

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "MS"

    aput-object v3, v0, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0xe1

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "PN"

    aput-object v3, v0, v5

    const/16 v3, 0x366

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0xe2

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "BL"

    aput-object v3, v0, v5

    const/16 v3, 0x24e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0xe3

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "MF"

    aput-object v3, v0, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0xe4

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "TL"

    aput-object v3, v0, v5

    const/16 v3, 0x29e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0xe5

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "TK"

    aput-object v3, v0, v5

    const/16 v3, 0x2b2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0xe6

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "VI"

    aput-object v3, v0, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    const/16 v3, 0xe7

    aput-object v0, v1, v3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "MQ"

    aput-object v2, v0, v5

    const/16 v2, 0x254

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v7

    const/16 v2, 0xe8

    aput-object v0, v1, v2

    sput-object v1, Lus/zoom/androidlib/util/CountryCodeUtil;->countryCodeTable:[[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIsoCountryCode(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, "US"

    return-object p0

    :cond_0
    const-string v0, "phone"

    .line 68
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-nez p0, :cond_1

    const-string p0, "US"

    return-object p0

    .line 71
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 72
    invoke-static {v0}, Lus/zoom/androidlib/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 73
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 76
    :cond_2
    invoke-static {v0}, Lus/zoom/androidlib/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 77
    invoke-static {}, Lus/zoom/androidlib/util/CompatUtils;->getLocalDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    :cond_3
    return-object v0
.end method

.method public static isoCountryCode2PhoneCountryCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 43
    sget-object v0, Lus/zoom/androidlib/util/CountryCodeUtil;->countryCodeTable:[[Ljava/lang/Object;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    if-eqz p0, :cond_0

    .line 44
    aget-object v5, v4, v2

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    const/4 p0, 0x1

    .line 45
    aget-object p0, v4, p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static phoneCountryCodeToIsoCountryCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, "1"

    .line 53
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "US"

    return-object p0

    .line 56
    :cond_0
    sget-object v0, Lus/zoom/androidlib/util/CountryCodeUtil;->countryCodeTable:[[Ljava/lang/Object;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    if-eqz p0, :cond_1

    const/4 v5, 0x1

    .line 57
    aget-object v5, v4, v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_1

    .line 58
    aget-object p0, v4, v2

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method
