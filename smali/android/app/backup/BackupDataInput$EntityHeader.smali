# classes.dex

.class Landroid/app/backup/BackupDataInput$EntityHeader;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/backup/BackupDataInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EntityHeader"
.end annotation


# instance fields
.field dataSize:I

.field key:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/backup/BackupDataInput$EntityHeader-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/app/backup/BackupDataInput$EntityHeader;-><init>()V

    return-void
.end method
