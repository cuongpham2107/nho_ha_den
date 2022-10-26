<style>
  .pagination svg,
  .pagination a {
    fill: currentColor !important;
  }
</style>
<link rel="stylesheet" href="<?php echo e(asset('css/main.css')); ?>">

<?php
  $pageCount = 2;
?>

<?php if($paginator->hasPages()): ?>
  <!-- Pagination -->
  <div class="pagination">
    <ul>
      
      <?php if($paginator->onFirstPage()): ?>
        <li>
          <span>
            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" style="fill: rgba(0, 0, 0, 1);transform: ;msFilter:;"><path d="M13.939 4.939 6.879 12l7.06 7.061 2.122-2.122L11.121 12l4.94-4.939z"></path></svg>
          </span>
        </li>
      <?php else: ?>
        <li>
          <a href="<?php echo e($paginator->previousPageUrl()); ?>">
            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" style="fill: rgba(0, 0, 0, 1);transform: ;msFilter:;"><path d="M13.939 4.939 6.879 12l7.06 7.061 2.122-2.122L11.121 12l4.94-4.939z"></path></svg>
          </a>
        </li>
      <?php endif; ?>

      
      <?php $__currentLoopData = $elements; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $element): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
        
        <?php if(is_array($element)): ?>
          <?php
            $dotleft = false;
            $dotright = false;
          ?>
          <?php $__currentLoopData = $element; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $page => $url): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
            <?php if($page == $paginator->currentPage()): ?>
              <li>
                <span class="active"><?php echo e($page); ?></span>
              </li>

            <?php elseif($page <= $pageCount || (abs($paginator->currentPage() - $page) <= $pageCount && $paginator->currentPage() != 1 && $paginator->currentPage() != $paginator->lastPage()) || $page > $paginator->lastPage() - $pageCount): ?>
              <li>
                <a href="<?php echo e($url); ?>"><?php echo e($page); ?></a>
              </li>

            <?php elseif($page > $pageCount && $page < $paginator->currentPage() && $dotleft == false): ?>
              <?php
                $dotleft = true
              ?>
              <li>
                <span>
                  <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" style="fill: rgba(0, 0, 0, 1);transform: ;msFilter:;"><path d="M12 10c-1.1 0-2 .9-2 2s.9 2 2 2 2-.9 2-2-.9-2-2-2zm6 0c-1.1 0-2 .9-2 2s.9 2 2 2 2-.9 2-2-.9-2-2-2zM6 10c-1.1 0-2 .9-2 2s.9 2 2 2 2-.9 2-2-.9-2-2-2z"></path></svg>
                </span>
              </li>

            <?php elseif($page <= $paginator->lastPage() - $pageCount && $page > $paginator->currentPage() && $dotright == false): ?>
              <?php
                $dotright = true
              ?>
              <li>
                <span>
                  <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" style="fill: rgba(0, 0, 0, 1);transform: ;msFilter:;"><path d="M12 10c-1.1 0-2 .9-2 2s.9 2 2 2 2-.9 2-2-.9-2-2-2zm6 0c-1.1 0-2 .9-2 2s.9 2 2 2 2-.9 2-2-.9-2-2-2zM6 10c-1.1 0-2 .9-2 2s.9 2 2 2 2-.9 2-2-.9-2-2-2z"></path></svg>
                </span>
              </li>
            <?php endif; ?>
          <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        <?php endif; ?>
      <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

      
      <?php if($paginator->hasMorePages()): ?>
        <li>
          <a href="<?php echo e($paginator->nextPageUrl()); ?>">
            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" style="fill: rgba(0, 0, 0, 1);transform: ;msFilter:;"><path d="M10.061 19.061 17.121 12l-7.06-7.061-2.122 2.122L12.879 12l-4.94 4.939z"></path></svg>
          </a>
        </li>
      <?php else: ?>
        <li>
          <span>
            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" style="fill: rgba(0, 0, 0, 1);transform: ;msFilter:;"><path d="M10.061 19.061 17.121 12l-7.06-7.061-2.122 2.122L12.879 12l-4.94 4.939z"></path></svg>
          </span>
        </li>
      <?php endif; ?>
    </ul>
  </div>
  <!-- Pagination -->
<?php endif; ?>
<?php /**PATH /home/cudau/domains/cudau.kennatech.vn/public_html/resources/views/frontend/layouts/partials/paginate.blade.php ENDPATH**/ ?>