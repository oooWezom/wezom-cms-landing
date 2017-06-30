<?php
namespace Modules\Catalog\Models;

use Core\QB\DB;
use Core\Common;

class Groups extends Common
{

    public static $table = 'catalog_tree';


    public static function getInnerGroups($parent_id, $sort = null, $type = null, $limit = null, $offset = null)
    {
        $result = DB::select()
            ->from(static::$table)
            ->where(static::$table . '.parent_id', '=', $parent_id)
            ->where(static::$table . '.status', '=', 1);
        if ($sort !== null) {
            if ($type !== null) {
                $result->order_by(static::$table . '.' . $sort, $type);
            } else {
                $result->order_by(static::$table . '.' . $sort);
            }
        }
        if ($limit !== null) {
            $result->limit($limit);
            if ($offset !== null) {
                $result->offset($offset);
            }
        }
        return $result->find_all();
    }


    public static function countInnerGroups($parent_id)
    {
        $result = DB::select([DB::expr('COUNT(' . static::$table . '.id)'), 'count'])
            ->from(static::$table)
            ->where(static::$table . '.parent_id', '=', $parent_id)
            ->where(static::$table . '.status', '=', 1);
        return $result->count_all();
    }

}