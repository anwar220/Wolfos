# classes2.dex

.class final enum Landroid/mtp/MtpStorageManager$MtpOperation;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/mtp/MtpStorageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "MtpOperation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/mtp/MtpStorageManager$MtpOperation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/mtp/MtpStorageManager$MtpOperation;

.field public static final enum ADD:Landroid/mtp/MtpStorageManager$MtpOperation;

.field public static final enum COPY:Landroid/mtp/MtpStorageManager$MtpOperation;

.field public static final enum DELETE:Landroid/mtp/MtpStorageManager$MtpOperation;

.field public static final enum NONE:Landroid/mtp/MtpStorageManager$MtpOperation;

.field public static final enum RENAME:Landroid/mtp/MtpStorageManager$MtpOperation;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    new-instance v0, Landroid/mtp/MtpStorageManager$MtpOperation;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/mtp/MtpStorageManager$MtpOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/mtp/MtpStorageManager$MtpOperation;->NONE:Landroid/mtp/MtpStorageManager$MtpOperation;

    new-instance v1, Landroid/mtp/MtpStorageManager$MtpOperation;

    const-string v3, "ADD"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroid/mtp/MtpStorageManager$MtpOperation;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroid/mtp/MtpStorageManager$MtpOperation;->ADD:Landroid/mtp/MtpStorageManager$MtpOperation;

    new-instance v3, Landroid/mtp/MtpStorageManager$MtpOperation;

    const-string v5, "RENAME"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Landroid/mtp/MtpStorageManager$MtpOperation;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroid/mtp/MtpStorageManager$MtpOperation;->RENAME:Landroid/mtp/MtpStorageManager$MtpOperation;

    new-instance v5, Landroid/mtp/MtpStorageManager$MtpOperation;

    const-string v7, "COPY"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Landroid/mtp/MtpStorageManager$MtpOperation;-><init>(Ljava/lang/String;I)V

    sput-object v5, Landroid/mtp/MtpStorageManager$MtpOperation;->COPY:Landroid/mtp/MtpStorageManager$MtpOperation;

    new-instance v7, Landroid/mtp/MtpStorageManager$MtpOperation;

    const-string v9, "DELETE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Landroid/mtp/MtpStorageManager$MtpOperation;-><init>(Ljava/lang/String;I)V

    sput-object v7, Landroid/mtp/MtpStorageManager$MtpOperation;->DELETE:Landroid/mtp/MtpStorageManager$MtpOperation;

    const/4 v9, 0x5

    new-array v9, v9, [Landroid/mtp/MtpStorageManager$MtpOperation;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Landroid/mtp/MtpStorageManager$MtpOperation;->$VALUES:[Landroid/mtp/MtpStorageManager$MtpOperation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/mtp/MtpStorageManager$MtpOperation;
    .registers 2

    const-class v0, Landroid/mtp/MtpStorageManager$MtpOperation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/mtp/MtpStorageManager$MtpOperation;

    return-object v0
.end method

.method public static values()[Landroid/mtp/MtpStorageManager$MtpOperation;
    .registers 1

    sget-object v0, Landroid/mtp/MtpStorageManager$MtpOperation;->$VALUES:[Landroid/mtp/MtpStorageManager$MtpOperation;

    invoke-virtual {v0}, [Landroid/mtp/MtpStorageManager$MtpOperation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/mtp/MtpStorageManager$MtpOperation;

    return-object v0
.end method
