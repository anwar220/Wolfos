# classes4.dex

.class public final enum Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivityLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SharesheetStandardEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;",
        ">;",
        "Lcom/android/internal/logging/UiEventLogger$UiEventEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;

.field public static final enum INVALID:Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;

.field public static final enum SHARESHEET_APP_LOAD_COMPLETE:Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;

.field public static final enum SHARESHEET_APP_SHARE_RANKING_TIMEOUT:Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;

.field public static final enum SHARESHEET_COLLAPSED:Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;

.field public static final enum SHARESHEET_DIRECT_LOAD_COMPLETE:Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;

.field public static final enum SHARESHEET_DIRECT_LOAD_TIMEOUT:Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;

.field public static final enum SHARESHEET_EMPTY_DIRECT_SHARE_ROW:Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;

.field public static final enum SHARESHEET_EXPANDED:Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;

.field public static final enum SHARESHEET_PROFILE_CHANGED:Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;

.field public static final enum SHARESHEET_TRIGGERED:Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;


# instance fields
.field private final mId:I


# direct methods
.method static constructor <clinit>()V
    .registers 16

    new-instance v0, Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;

    const-string v1, "INVALID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;->INVALID:Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;

    new-instance v1, Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;

    const-string v3, "SHARESHEET_TRIGGERED"

    const/4 v4, 0x1

    const/16 v5, 0xe3

    invoke-direct {v1, v3, v4, v5}, Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;->SHARESHEET_TRIGGERED:Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;

    new-instance v3, Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;

    const-string v5, "SHARESHEET_PROFILE_CHANGED"

    const/4 v6, 0x2

    const/16 v7, 0xe5

    invoke-direct {v3, v5, v6, v7}, Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;->SHARESHEET_PROFILE_CHANGED:Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;

    new-instance v5, Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;

    const-string v7, "SHARESHEET_EXPANDED"

    const/4 v8, 0x3

    const/16 v9, 0xe6

    invoke-direct {v5, v7, v8, v9}, Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;->SHARESHEET_EXPANDED:Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;

    new-instance v7, Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;

    const-string v9, "SHARESHEET_COLLAPSED"

    const/4 v10, 0x4

    const/16 v11, 0xe7

    invoke-direct {v7, v9, v10, v11}, Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;->SHARESHEET_COLLAPSED:Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;

    new-instance v9, Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;

    const-string v11, "SHARESHEET_APP_LOAD_COMPLETE"

    const/4 v12, 0x5

    const/16 v13, 0x142

    invoke-direct {v9, v11, v12, v13}, Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;->SHARESHEET_APP_LOAD_COMPLETE:Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;

    new-instance v11, Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;

    const-string v13, "SHARESHEET_DIRECT_LOAD_COMPLETE"

    const/4 v14, 0x6

    const/16 v15, 0x143

    invoke-direct {v11, v13, v14, v15}, Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;->SHARESHEET_DIRECT_LOAD_COMPLETE:Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;

    new-instance v13, Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;

    const-string v15, "SHARESHEET_DIRECT_LOAD_TIMEOUT"

    const/4 v14, 0x7

    const/16 v12, 0x144

    invoke-direct {v13, v15, v14, v12}, Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;->SHARESHEET_DIRECT_LOAD_TIMEOUT:Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;

    new-instance v12, Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;

    const-string v15, "SHARESHEET_APP_SHARE_RANKING_TIMEOUT"

    const/16 v14, 0x8

    const/16 v10, 0x33f

    invoke-direct {v12, v15, v14, v10}, Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;->SHARESHEET_APP_SHARE_RANKING_TIMEOUT:Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;

    new-instance v10, Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;

    const-string v15, "SHARESHEET_EMPTY_DIRECT_SHARE_ROW"

    const/16 v14, 0x9

    const/16 v8, 0x33c

    invoke-direct {v10, v15, v14, v8}, Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;->SHARESHEET_EMPTY_DIRECT_SHARE_ROW:Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;

    const/16 v8, 0xa

    new-array v8, v8, [Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;

    aput-object v0, v8, v2

    aput-object v1, v8, v4

    aput-object v3, v8, v6

    const/4 v0, 0x3

    aput-object v5, v8, v0

    const/4 v0, 0x4

    aput-object v7, v8, v0

    const/4 v0, 0x5

    aput-object v9, v8, v0

    const/4 v0, 0x6

    aput-object v11, v8, v0

    const/4 v0, 0x7

    aput-object v13, v8, v0

    const/16 v0, 0x8

    aput-object v12, v8, v0

    aput-object v10, v8, v14

    sput-object v8, Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;->$VALUES:[Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;->mId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;
    .registers 2

    const-class v0, Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;
    .registers 1

    sget-object v0, Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;->$VALUES:[Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;

    invoke-virtual {v0}, [Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .registers 2

    iget v0, p0, Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;->mId:I

    return v0
.end method
